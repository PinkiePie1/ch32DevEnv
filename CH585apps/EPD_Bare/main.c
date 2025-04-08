/****************************************************************
 * File Name          : Main.c
 * Author             : JCQ
 * Version            : V1.0
 * Date               : 2025/04/07
 * Description        : 裸机驱动墨水屏
 *********************************************************************************/
#include "CH58x_common.h"
#include "main.h"
uint8_t imageCache[4736] = {0};

//和memset
static inline void mymemset(void *dest, int c, size_t n) { unsigned char *s = dest; for (; n; n--, s++) *s = c; }

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
	
	mymemset(imageCache,0xFF,4736);
	
	paint_SetImageCache(imageCache);
	
	drawLine(0,147,127,147,BLACK);
	drawRect(0,0,127,295,BLACK);

	drawRect(10,10,50,50,BLACK);

	fastFill(10,52,40,40,BLACK);
	fastFill(23,64,2,2,WHITE);
	
	
	GPIOB_ResetBits(GPIO_Pin_6);
	EPD_Init();
	EPD_Clear();
	tickDelayMs(15);
	EPD_SendDisplay(imageCache);
	EPD_Sleep();
	while(1);
	
}
