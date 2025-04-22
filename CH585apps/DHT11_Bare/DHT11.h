/*
DHT11驱动头文件
在这里定义引脚
*/
#include "CH58x_common.h"

#ifndef __DHT11_H_
#define __DHT11_H_

#define DHT_PIN GPIO_Pin_0 //PB0

/*若移植需要实现的接口*/
//延时
#define DHT11_DelayUs(n) DelayUs(n)
#define DHT11_DelayMs(n) DelayMs(n)
//引脚变为输入
#define WIRE_IN()        GPIOB_ModeCfg(DHT_PIN,GPIO_ModeIN_PU)
//引脚变为开漏输出
#define WIRE_OUT()       GPIOB_ModeCfg(DHT_PIN,GPIO_ModeOut_PP_5mA)
//引脚拉高
#define WIRE_HIGH()      GPIOB_SetBits(DHT_PIN)
//引脚拉低
#define WIRE_LOW()       GPIOB_ResetBits(DHT_PIN)
//读入引脚数值
#define READWIRE()       (GPIOB_ReadPortPin(DHT_PIN) == 0UL ? 0UL : 1UL)

void DHT11_Init(void);
void DHT11_Read(uint8_t *pTr);





#endif
