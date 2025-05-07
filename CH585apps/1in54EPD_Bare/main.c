
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
__attribute__((aligned(4))) uint8_t imageCache[4736] = {0};//显存，为了提高memcpy的速度需要四字节对齐。

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

	EPD_Init();
	EPD_Clear();
	EPD_Sleep();
	while(1);

	GPIOB_ResetBits(GPIO_Pin_3);
	//由于LUT反向，不再需要初始化，0x00对应白色
	//memset(imageCache,0xFF,4736);
	
	paint_SetImageCache(imageCache);


	//快速显示图片,100us左右
	FastImg(147,295,gImage_full+16*10);

	//需要setpixel的画图
	drawLine(0,147,127,147,BLACK);
//	drawRect(0,0,127,295,BLACK);
//	drawRect(10,10,50,50,BLACK);

	//快速画图与快速显示字符串
	fastFill(80,95,40,40,BLACK);
	fastFill(89,115,2,2,WHITE);
	fastRect(0,0,127,295,BLACK);
	fastRect(78,93,122,137,BLACK);
	
	fastDrawString(80,90,"1234567890abcdefghijklmnopqrstuvwxyz,./?;:!@#$%^&*()",font8);
    //printf功能
	EPD_Printf(10,145,font14,WHITE,"Start @ChipID=%02X",R8_CHIP_ID);
	EPD_Printf(24,145,font14,BLACK,"SysClock:%ld",GetSysClock());

	GPIOB_ResetBits(GPIO_Pin_6);

	EPD_Init();	
	EPD_SendDisplay(imageCache);
	EPD_Sleep();
	tickDelayMs(3000);
	//局刷
	drawStr(51,145,"Partial update.",font14,WHITE);
	drawStr(66,80,"font8",font8,BLACK);

	
	for(int i=19;i<29;i++)
	{
		EPD_Printf(100,132,font14,WHITE,"|%d|",i);
		EPD_PartialDisplay(imageCache);
		EPD_Sleep();
		tickDelayMs(1000);
	}
	//EPD_SendDisplay( (unsigned char *)gImage_full );//显示大图像，直接从flash读取

	
//	EPD_Sleep();
	while(1)
	{
		GPIOB_SetBits(GPIO_Pin_3);
		tickDelayMs(500);
		GPIOB_ResetBits(GPIO_Pin_3);
		tickDelayMs(500);
	}
	
	
}
