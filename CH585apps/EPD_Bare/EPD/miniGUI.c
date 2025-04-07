#include "miniGUI.h"
/*
写显存的重新实现
只适用于2.9寸的SSD1680
128*296个像素，加起来4736byte的显存
*/

//每过16个字节换一次行

uint8_t *image;//指向显存的指针

//指定显存位置。用户应该在主函数中调用这个函数
//并为它准备好一个4736的数组作为显存。
void paint_SetImageCache(uint8_t *imagePtr)
{
	image = imagePtr;
}

//设定某个像素的值，x范围0-127，y范围0-295
static inline void setPixel(uint16_t x, uint16_t y, uint8_t color)
{
//    x = x>128?128:x; 
//    y = y>295?295:y; 
      //这两行可以避免越界访问
      //但太占地方了,指令多了将近一半
      //所以我们把不越界的责任交给用户。
      //如果希望安全，用户可以把数组弄大一点
      //比如5000个byte，这样即使越界也很难碰到别的东西。
    uint16_t index = (x>>3) + (y<<4); 
    //像素所对应的字节的位置
    if( color )
    {
	    //x%8可以用x&(8-1)代替,速度更快。
	    //但这招只在取余的数是2的倍数的时候能用。
	    image[index] |= (0x80 >> (x&7UL));
	}
	else
	{
		image[index] &= ~(0x80 >> (x&7UL));
	}

}

//画线。只能画横着或者竖着的线。斜着的线没有必要。
void drawLine(uint16_t xStart, uint16_t yStart, uint16_t xEnd, uint16_t yEnd, uint8_t color)
{
	if(xStart==xEnd)
	{
	    uint16_t i = (yStart>yEnd) ? yEnd : yStart;
	    uint16_t end = (i==yEnd) ? yStart : yEnd;
		for(;i<=end;i++)
		{
			setPixel(xStart,i,color);
		}
	}
	else if (yStart==yEnd)
	{
	    uint16_t i = (xStart>xEnd) ? xEnd : xStart;
	    uint16_t end = (i==xEnd) ? xStart : xEnd;
		for(;i<=end;i++)
		{
			setPixel(i,yStart,color);
		}
	}
	
}
