#ifndef __MINIGUI_H_
#define __MINIGUI_H_
//上面这些define是为了防止头文件被重复引用

#include "CH58x_common.h"

#define BLACK 0x00//黑色
#define WHITE 0xFF//白色

void paint_SetImageCache(uint8_t *imagePtr);
void drawLine(uint16_t xStart, uint16_t yStart, uint16_t xEnd, uint16_t yEnd, uint8_t color);


#endif
