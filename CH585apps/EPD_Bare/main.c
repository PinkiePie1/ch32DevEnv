/****************************************************************
 * File Name          : Main.c
 * Author             : JCQ
 * Version            : V1.0
 * Date               : 2025/04/07
 * Description        : 裸机驱动墨水屏
 *********************************************************************************/
#include "CH58x_common.h"
#include "main.h"
__attribute__((aligned(4))) uint8_t imageCache[4736] = {0};//显存，为了提高memcpy的速度需要四字节对齐。

//和memset
static inline void mymemset(void *dest, int c, size_t n) { unsigned char *s = dest; for (; n; n--, s+=4) *s = c; }

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

	GPIOB_SetBits(GPIO_Pin_6);
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
	fastFill(10,52,40,40,BLACK);
	fastFill(23,64,2,2,WHITE);
	fastRect(0,0,127,295,BLACK);
	fastRect(10,10,50,50,BLACK);
	fastDrawString(80,90,"1234567890abcdefghijklmnopqrstuvwxyz,./?;:!@#$%^&*()",font8);

	//需要setpixel的显示字符串，几个毫秒
//	drawChar(77,50,'y',font8,WHITE);
//	drawChar(77,50,'y',font8,WHITE);
//	drawChar(77,50,'y',font8,WHITE);
//	drawChar(77,50,'y',font8,WHITE);
//	drawStr(60,81,"12345abc",font8,WHITE);

//	drawStr(60,145,"This is EPD test program.",font8,WHITE);
	
	GPIOB_ResetBits(GPIO_Pin_6);
	EPD_Init();	
	EPD_SendDisplay(imageCache);
	EPD_Sleep();
	//tickDelayMs(3000);
	//EPD_Init();
	//EPD_SendDisplay( (unsigned char *)gImage_full );//显示大图像，直接从flash读取

	
//	EPD_Sleep();
	while(1);
	
}
