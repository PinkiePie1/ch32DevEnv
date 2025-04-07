/****************************************************************
 * File Name          : Main.c
 * Author             : JCQ
 * Version            : V1.0
 * Date               : 2025/04/07
 * Description        : 裸机驱动墨水屏
 *********************************************************************************/




#include "CH58x_common.h"
#include "main.h"

static void GPIOInit(void)
{
	GPIOA_ModeCfg(bv(13)|
	              bv(14)|
	              bv(11)|
	              bv(9)|
	              bv(8)|
	              bv(7), 
	              GPIO_ModeOut_PP_5mA);//PA13,14,9,8,7初始化为输出
}

void main(void)
{
	HSECFG_Capacitance(HSECap_18p);
	SetSysClock(CLK_SOURCE_HSE_PLL_62_4MHz);

	GPIOInit();

    for(;;)
    {
    	GPIOA_InverseBits( bv(13)|bv(14)|bv(11)|bv(9)|bv(8)|bv(7) );
    	DelayMs(1000);
    }
	
}
