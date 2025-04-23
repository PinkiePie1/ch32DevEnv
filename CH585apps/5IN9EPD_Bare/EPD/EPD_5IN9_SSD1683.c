#include "EPD_5IN9_SSD1683.h"

/* 控制刷新电压波形用到的LUT */
//注意和默认模式不同，这里黑白反色了，这样就能跳过paint clear white。
const uint8_t MyFastFullLUT[] =
{
0,0
//SSD1683的LUT格式不同，不可混用。
};

//局刷用到的LUT
const uint8_t MyPartialLUT[159] =
{

};

/******
 *初始化EPD用的GPIO引脚和SPI接口。
 *
 *
 */
void EPD_Hal_Init(void)
{    
    //初始化输入和输出。BUSY空闲时为高，所以用IPU。
    //浮空应该也是可以的。
	GPIOA_ModeCfg( EPD_SCK_PIN |
	               EPD_SDA_PIN |
                   EPD_RES_PIN |
                   EPD_DC_PIN |
                   EPD_CS_PIN, GPIO_ModeOut_PP_5mA );
   GPIOA_ModeCfg(EPD_BUSY_PIN, GPIO_ModeIN_PU);

   SPI0_MasterDefInit();//默认的SPI初始化，三线全双工。后续需要改
   SPI0_CLKCfg(4); //2分频
   CS_HIGH;
   RES_HIGH;
   DC_HIGH;
}

//写EPD寄存器地址
static void EPD_Cmd(uint8_t cmd)
{
	DC_LOW;
	CS_LOW;
	SPI0_MasterSendByte(cmd);
	CS_HIGH;
}

//写EPD寄存器数据。EPD的操作就是先写地址，再写数据，可以写多次。
static void EPD_Dat(uint8_t dat)
{
	DC_HIGH;
	CS_LOW;
	SPI0_MasterSendByte(dat);
	CS_HIGH;
}

//RES引脚发送复位命令
static void EPD_HardReset(void)
{
	RES_HIGH; //既然已经拉高了，那就没有必要再拉低一次。
	devDelay(100);
	RES_LOW;
	devDelay(10);
	RES_HIGH;
	devDelay(10);
}

//写入波形控制的LUT，通过改变LUT数组可以控制波形
//不应该直接调用，它是给初始化函数用的。
static void EPD_LUT(const uint8_t *lutPtr)
{
/*  需要根据ssd1683重写
	EPD_Cmd(0x32);
	
	for(uint16_t i=0; i<153; i++)
	{
		EPD_Dat( lutPtr[i] );
	}
	
	WAIT_BUSY;
	EPD_Cmd( 0x3F );
	EPD_Dat( lutPtr[153] );
	EPD_Cmd( 0x03 );
	EPD_Dat( lutPtr[154] );
	EPD_Cmd( 0x04 );
	EPD_Dat( lutPtr[155] );
	EPD_Dat( lutPtr[156] );
	EPD_Dat( lutPtr[157] );
	EPD_Cmd( 0x2c );
	EPD_Dat( lutPtr[158] );
*/	
}

static void SetMram(void)
{
	//数据写入RAM的方式
	EPD_Cmd( 0x11 );
	EPD_Dat( 0x01 );

	EPD_Cmd( 0x44 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x31 );

	EPD_Cmd( 0x45 );
	EPD_Dat( 0x0F );
	EPD_Dat( 0x01 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );	
}

static void SetMCur(void)
{
	EPD_Cmd( 0x4E );
    EPD_Dat( 0x00 );
    EPD_Cmd( 0x4F );
    EPD_Dat( 0x0F );
    EPD_Dat( 0x01 );
}

static void SetSram(void)
{
	EPD_Cmd( 0x91 );
	EPD_Dat( 0x00 );

	EPD_Cmd( 0xC4 );
	EPD_Dat( 0x31 );
	EPD_Dat( 0x00 );

	EPD_Cmd( 0xC5 );
	EPD_Dat( 0x0F );
	EPD_Dat( 0x01 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
}

static void SetSCur(void)
{
    EPD_Cmd( 0xCE );
    EPD_Dat( 0x31 );
    EPD_Cmd( 0xCF );
    EPD_Dat( 0x0F );
    EPD_Dat( 0x01 );
}

void EPD_Init(void)
{
	//硬重置
	EPD_HardReset();
	WAIT_BUSY;
	
	//软重置
	EPD_Cmd( 0x12 );
	WAIT_BUSY;
	
	SetMram();
	SetMCur();
	WAIT_BUSY;

	SetSram();
	SetSCur();
	WAIT_BUSY;	

	//边框颜色
	EPD_Cmd( 0x3C);
	EPD_Dat( 0x80);
	
//	WAIT_BUSY;

}

//告诉墨水屏把RAM里的数据刷新到屏幕上
void EPD_Update(void)
{
    EPD_Cmd( 0x22 );
    EPD_Dat( 0xF7 );
    EPD_Cmd( 0x20 );
    devDelay(100);
    WAIT_BUSY;	
    
}


//告诉墨水屏把RAM里的数据刷新到屏幕上,配合局刷初始化使用
void EPD_PartialUpdate(void)
{
    EPD_Cmd( 0x22 );
    EPD_Dat( 0xCF );
    EPD_Cmd( 0x20 );
    WAIT_BUSY;	
    
}


//刷白屏。
void EPD_Clear(void)
{
	EPD_Cmd(0x24);
	for(uint32_t i = 0; i < 13600; i++)
	{
		EPD_Dat(0xFF);
	}
	
	EPD_Cmd(0x26);
	for(uint32_t i = 0; i < 13600; i++)
	{
		EPD_Dat(0x00);
	}

	EPD_Cmd(0xA4);
	for(uint32_t i = 0; i < 13600; i++)
	{
		EPD_Dat(0xFF);
	}

	EPD_Cmd(0xA6);
	for(uint32_t i = 0; i < 13600; i++)
	{
		EPD_Dat(0x00);
	}

	EPD_Update();
	
}


void EPD_SendDisplay(uint8_t *image)
{

	EPD_Cmd(0x24);
    DC_HIGH;
	CS_LOW;
	for (uint32_t i=0; i < 272; i++)
	{
		SPI0_MasterDMATrans(image+i*99,50);
	}
	CS_HIGH;

	EPD_Cmd(0xA4);
    DC_HIGH;
	CS_LOW;
	for (uint32_t i=0; i < 272; i++)
	{
		SPI0_MasterDMATrans(image+49+i*99,50);
	}
	CS_HIGH;

	EPD_Cmd(0xA6);
	for(uint32_t i = 0; i < 13600; i++)
	{
		EPD_Dat(0x00);
	}

	EPD_Cmd(0x26);
	for(uint32_t i = 0; i < 13600; i++)
	{
		EPD_Dat(0x00);
	}
	
	EPD_Update();
}

void EPD_PartialDisplay(uint8_t *image)
{
	//硬重置
	EPD_HardReset();
	devDelay( 100 );

	EPD_LUT(MyPartialLUT);
	//可以不用指定WS，因为用的是内存里的LUT
	/*
	EPD_Cmd( 0x37 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x40|1<<6 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
	EPD_Dat( 0x00 );
*/
    //边框颜色,这里边框接地
	EPD_Cmd( 0x3C );
	EPD_Dat( 0x80 );

//等待实现。
/*
    DC_HIGH;
	CS_LOW;
	SPI0_MasterDMATrans(image,4000);
	SPI0_MasterDMATrans(image+4000,736);
	CS_HIGH;

	EPD_PartialUpdate();
	*/
}

//让屏幕睡眠
void EPD_Sleep(void)
{
    EPD_Cmd(0x10);
    EPD_Dat(0x01);
    devDelay(5);
    //这里的延迟如果没有会导致睡眠失败，不知道为啥。
}
