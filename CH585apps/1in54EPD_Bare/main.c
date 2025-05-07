
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
__attribute__((aligned(4))) uint8_t imageCache[2888] = {0};//显存，为了提高memcpy的速度需要四字节对齐。

//和memset
static inline void mymemset(void *dest, int c, size_t n) { unsigned char *s = dest; for (; n; n--, s+=4) *s = c; }

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
	//由于LUT反向，不再需要初始化，0x00对应白色
	//memset(imageCache,0xFF,4736);
	
	paint_SetImageCache(imageCache);
	drawStr(50,150,"This is 1.54 inch EDP test program.",font14,WHITE);
	GPIOB_ResetBits(GPIO_Pin_6);

	EPD_Init();	
	EPD_SendDisplay(imageCache);
	EPD_Sleep();

	while(1)
	{
		GPIOB_SetBits(GPIO_Pin_3);
		tickDelayMs(500);
		GPIOB_ResetBits(GPIO_Pin_3);
		tickDelayMs(500);
	}
	
	
}
