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
	EPD_Hal_Init();
	GPIOB_ModeCfg(GPIO_Pin_6,GPIO_ModeOut_PP_5mA);
	GPIOB_SetBits(GPIO_Pin_6);
}

void main(void)
{
	//在sys.c里已经写了highcode_init，并且会放到startup之后
	//所以在这里初始化时钟是不必要的。	
	tickDelayInit();
	GPIOInit();

	GPIOB_ResetBits(GPIO_Pin_6);
	EPD_Init();

	EPD_Clear();
	EPD_Sleep();
	while(1);
	
}
