#include "EPD_2IN9_SSD1680.h"

/* 控制刷新电压波形用到的LUT */
const uint8_t MyFastFullLUT[159] =
{
0x80,   0x66,   0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x40,   0x0,    0x0,    0x0, //L0 BB
//b10000000 b01100110                                          b01000000
0x40,   0x66,   0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x80,   0x0,    0x0,    0x0,  //L1 BW
//b00010000 b01100110                                          b00100000
0x80,   0x66,   0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x40,   0x0,    0x0,    0x0,  // L2 WB
0x40,   0x66,   0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x80,   0x0,    0x0,    0x0, // L3 WW
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0, // L4 not used
0xB,    0x1,    0x1,    0x0,    0x0,    0x0,    0x0, //TPA TPB SRAB TPC TPD SRCD RP
0x5,    0x5,    0x0,    0x3,    0x3,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0xB,    0x1,    0x1,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x0,    0x0,    0x0,    0x0,    0x0,    0x0,    0x0,
0x33,   0x44,   0x44,   0x45,   0x43,   0x44,   0x0,    0x0,    0x0,     //FR01 FR23 FR45 FR67 FR89 FR1011 XON0AB0CD1AB1CD2AB2CD3AB3CD XON4_7 XON8_11
0x22,   0x17,   0x4A,   0x0,    0x38,   0x36                             //EOPT VGH VSH1 VSH2 VSL VCOM
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
	RES_HIGH;
	devDelay(10);
	RES_LOW;
	devDelay(2);
	RES_HIGH;
	devDelay(10);
}

//写入波形控制的LUT，通过改变LUT数组可以控制波形
//不应该直接调用，它是给初始化函数用的。
static void EPD_LUT(const uint8_t *lutPtr)
{
	EPD_Cmd(0x32);
	for(uint16_t i=0; i<153; i++)
	{
		EPD_Dat(lutPtr[i]);
	}
/*    DC_HIGH;
	CS_LOW;
	SPI0_MasterDMATrans(lutPtr,153);
	CS_HIGH;*/
	EPD_Cmd( 0x3f );
	EPD_Dat( lutPtr[153] );
	EPD_Cmd( 0x03 );
	EPD_Dat( lutPtr[154] );
	EPD_Cmd( 0x04 );
	EPD_Dat( lutPtr[155] );
	EPD_Dat( lutPtr[156] );
	EPD_Dat( lutPtr[157] );
	EPD_Cmd( 0x2c );
	EPD_Dat( lutPtr[158] );
	WAIT_BUSY;
	
}

//设置显示窗口
static void EPD_SetWindows( uint16_t Xstart, uint16_t Ystart, uint16_t Xend, uint16_t Yend )
{
    EPD_Cmd( 0x44 );
    EPD_Dat( (Xstart>>3) & 0xFF );
    EPD_Dat( (Xend>>3) & 0xFF );

    EPD_Cmd( 0x45 );
    EPD_Dat( Ystart & 0xFF );
    EPD_Dat( (Ystart>>8) & 0xFF );
    EPD_Dat( Yend & 0xFF );
    EPD_Dat( (Yend>>8) & 0xFF );
    
}

//设置光标位置
static void EPD_SetCursor( uint16_t X, uint16_t Y )
{
    EPD_Cmd( 0x4E );
    EPD_Dat( X & 0xFF );

    EPD_Cmd( 0x4F );
    EPD_Dat( Y & 0xFF );
    EPD_Dat( (Y>>8) & 0xFF );

}

void EPD_Init(void)
{
	//硬重置
	EPD_HardReset();
	devDelay( 100 );

	//软重置
	WAIT_BUSY;
	EPD_Cmd( 0x12 );
	WAIT_BUSY;

	//输出控制
	EPD_Cmd( 0x01 );
	EPD_Dat( 0x27 );
	EPD_Dat( 0x01 );
	EPD_Dat( 0x00 );

	//数据写入RAM的方式
	EPD_Cmd( 0x11 );
	EPD_Dat( 0x03 );

	EPD_SetWindows(0, 0, EPD_WIDTH-1, EPD_HEIGHT-1);

	EPD_Cmd( 0x21 );
	EPD_Dat( 0x00 );
	EPD_SetCursor(0, 0);
	WAIT_BUSY;

	EPD_LUT(MyFastFullLUT);
}

//告诉墨水屏把RAM里的数据刷新到屏幕上
void EPD_Update(void)
{
    EPD_Cmd( 0x22 );
    EPD_Cmd( 0xC7 );
    EPD_Cmd( 0x20 );
    WAIT_BUSY;	
    
}

//告诉墨水屏把RAM里的数据刷新到屏幕上,配合局刷初始化使用
void EPD_PartialUpdate(void)
{
    EPD_Cmd( 0x22 );
    EPD_Cmd( 0x0F );
    EPD_Cmd( 0x20 );
    WAIT_BUSY;	
    
}


//刷白屏。
void EPD_Clear(void)
{
	EPD_Cmd(0x24);
	for(uint32_t i = 0; i < 4736; i++)
	{
		EPD_Dat(0xF0);
	}
	EPD_Cmd(0x26);
	for(uint32_t i = 0; i < 4736; i++)
	{
		EPD_Dat(0xFF);
	}

	EPD_Update();
	
}

//让屏幕睡眠
void EPD_Sleep(void)
{
    EPD_Cmd(0x10);
    EPD_Dat(0x01);
    devDelay(5);
    //这里的延迟如果没有会导致睡眠失败，不知道为啥。
}
