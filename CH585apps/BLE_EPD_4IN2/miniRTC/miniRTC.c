#include "miniRTC.h"

int32_t secondsOffset = 0;
uint32_t dayOffset = 0;

//获取距离启动之后过了多少秒
uint32_t miniRTC_getSeconds(void)
{
	uint32_t t = 0;
    uint16_t sec2, t32k;

    sec2 = R16_RTC_CNT_2S;//以2s为基准的计数器
    t32k = R16_RTC_CNT_32K;//以32.768khz为基准的计数器

    t = sec2 * 2 + ((t32k < 0x8000) ? 0 : 1);

    return t;
	
}

//获取距离启动之后过了多少天，最大37年。
uint32_t miniRTC_getDays(void)
{
	uint32_t day = R32_RTC_CNT_DAY & 0x3FFF;
	return day;
	
}

//设置offset，理论上来说这个函数只需要内部使用
//为了调试和自由度选择先把接口暴露出来
void miniRTC_setOffset(int32_t Soffset, int32_t Doffset)
{
	secondsOffset = Soffset;
	dayOffset = Doffset;
	return;
	
}


void miniRTC_CalibrateTime(
                           uint16_t year, 
                           uint16_t month, 
                           uint16_t date, 
                           uint16_t hour,
                           uint16_t minute,
                           uint16_t second
                          )
{
	int32_t targetTime = hour * 3600 + minute * 60 + second;//目标时间是从0点开始的多少秒
	int32_t target_seconds_offset = targetTime - miniRTC_getSeconds(); //计算秒级offset

	int32_t targetDay = 0;

	//从2020年数到目标年要多少天
	uint16_t i = year;
    while(i > BEGYEAR)
    {
        targetDay += YearLength(i - 1);
        i--;
    }

    //从目标年数到目标日要多少天
    i = month;
    while(i > 1)
    {
        targetDay += monthLength(IsLeapYear(year), i - 2);
        i--;
    }

    targetDay += (date-1);

	//计算天级offset
    uint32_t target_day_offset = targetDay - miniRTC_getDays();

	//应用offset
    miniRTC_setOffset(target_seconds_offset, target_day_offset);
	
	return;
	
}


void miniRTC_GetTime(
					uint16_t *year, 
					uint16_t *month, 
					uint16_t *date, 
					uint16_t *hour, 
					uint16_t *minute, 
					uint16_t *second)
{
    uint32_t t;
    uint16_t day, sec2, t32k;

    day = R32_RTC_CNT_DAY & 0x3FFF;
    sec2 = R16_RTC_CNT_2S;
    t32k = R16_RTC_CNT_32K;

    t = sec2 * 2 + ((t32k < 0x8000) ? 0 : 1);

	//应用offset
    t+=secondsOffset;
    day+=dayOffset;
    day = t > 86399 ? day + 1 : day; //如果t大于86400，说明已经过了一天
    t = t > 86399 ? t-86400 : t; //确保t在0-86399之间
    

    *year = BEGYEAR;
    while(day >= YearLength(*year))
    {
        day -= YearLength(*year);
        (*year)++;
    }

    *month = 0;
    while(day >= monthLength(IsLeapYear(*year), *month))
    {
        day -= monthLength(IsLeapYear(*year), *month);
        (*month)++;
    }
    (*month)++;
    *date = day + 1;
    *hour = t / 3600;
    *minute = t % 3600 / 60;
    *second = t % 60;
}



