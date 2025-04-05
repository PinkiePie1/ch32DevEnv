#include "SPI_Init.h"
#include "CH58x_common.h"

void EPD_GPIOInit(void)
{
    GPIOA_ModeCfg(EPD_SCL_GPIO_PIN|EPD_SDA_GPIO_PIN|EPD_RES_GPIO_PIN|EPD_DC_GPIO_PIN|EPD_CS_GPIO_PIN,GPIO_ModeOut_PP_5mA);//初始化PA的SPI输出
    GPIOB_ModeCfg(EPD_BUSY_GPIO_PIN,GPIO_ModeIN_Floating);//初始化PB的busy读入引脚
    SPI0_MasterDefInit();//3线半双工,超高速率
	
}


void EPD_WR_Bus(u8 dat)
{
	EPD_CS_Clr();
/*
    u8 i;
    for(i=0;i<8;i++)
    {
        EPD_SCL_Clr();
        if(dat&0x80)
        {
            EPD_SDA_Set();
        }
        else
        {
            EPD_SDA_Clr();
        }
        EPD_SCL_Set();
        dat<<=1;
    }
*/
	SPI0_MasterSendByte(dat);
	EPD_CS_Set();	
}

void EPD_WR_REG(u8 reg)
{
	EPD_DC_Clr();
	EPD_WR_Bus(reg);
	EPD_DC_Set();
}
void EPD_WR_DATA8(u8 dat)
{
	EPD_DC_Set();
	EPD_WR_Bus(dat);
	EPD_DC_Set();
}





