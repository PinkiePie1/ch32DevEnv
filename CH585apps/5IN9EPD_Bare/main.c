
/****************************************************************
 * File Name          : Main.c
 * Author             : JCQ
 * Version            : V1.0
 * Date               : 2025/04/07
 * Description        : 裸机驱动墨水屏
 *********************************************************************************/
#include "CH58x_common.h"
#include "main.h"
#include <stdio.h>

//显存，为了提高memcpy的速度需要四字节对齐。
__attribute__((aligned(4))) uint8_t imageCache[26928] = {0};

static void GPIOInit(void)
{
	EPD_Hal_Init();
	GPIOB_ModeCfg(GPIO_Pin_3,GPIO_ModeOut_PP_5mA);
	GPIOB_SetBits(GPIO_Pin_3);
}

void main(void)
{
	//在sys.c里已经写了highcode_init，并且会放到startup之后
	//所以在这里初始化时钟是不必要的。	
	tickDelayInit();
	GPIOInit();

	GPIOB_ResetBits(GPIO_Pin_3);
	memset(imageCache,0xFF,26928);
	
	paint_SetImageCache(imageCache);

	drawStr(120,150,"this is where I am",font14,BLACK);
	drawStr(500,150,"this is where I am",font14,WHITE);

	EPD_Init();	
	EPD_SendDisplay(imageCache);
    EPD_Sleep();
    GPIOB_SetBits(GPIO_Pin_3);

 

    

	
    
	while(1);
	
}
