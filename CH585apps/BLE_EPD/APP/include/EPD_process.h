/*
 * 文件：EPD相关任务的头文件
 * 
 *
 */

#ifndef __EPD_PROCESS_H_
#define __EPD_PROCESS_H_

#include "EPD_2IN9_SSD1680.h"
#include "miniGUI.h"

#define EPD_SHOWMSG_EVT        1UL
#define EPD_UPDATE_EVT         1UL<<1
#define EPD_WAITBUSY           1UL<<2
#define EPD_SHOWCONNECT_EVT    1UL<<3
#define EPD_SHOWIMG_EVT        1UL<<4
#define EPD_BLINK              1UL<<5

//EPD任务进程的ID
extern uint8_t EPD_taskID;
//初始化程序，负责初始化GPIO，SPI和delay函数
void EPDTask_Init(void);




#endif
