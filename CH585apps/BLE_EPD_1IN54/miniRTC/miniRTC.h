#ifndef __MINIRTC_H__
#define __MINIRTC_H__

#include "CH58x_common.h"

//秒级offset
extern int32_t secondsOffset;

//日期offset
extern uint32_t dayOffset;


//读取RTC寄存器中实际的日期和时间，
//如果以官方固件库的2020年1月1日0时0分初始化
//则单片机启动的那一刻为0天0秒。
uint32_t miniRTC_getSeconds(void);
uint32_t miniRTC_getDays(void);

//设置offset
void miniRTC_setOffset(int32_t Soffset, int32_t Doffset);

void miniRTC_CalibrateTime(uint16_t year, uint16_t month, uint16_t date, uint16_t hour, uint16_t minute, uint16_t second);
void miniRTC_GetTime(uint16_t *year, uint16_t *month, uint16_t *date, uint16_t *hour, uint16_t *minute, uint16_t *second);

#endif
