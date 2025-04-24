#ifndef __EPD_2IN9_SSD1680_H__
#define __EPD_2IN9_SSD1680_H__

#include "CH58x_common.h"

//EPD用到的各个引脚
//PA10和PA11是低频晶振外接的引脚，所以避开了
#define EPD_SCK_PIN GPIO_Pin_13 //PA13
#define EPD_SDA_PIN GPIO_Pin_14 //PA14
#define EPD_RES_PIN GPIO_Pin_12 //PA12
#define EPD_DC_PIN GPIO_Pin_7  //PA7
#define EPD_CS_PIN GPIO_Pin_9  //PA9
#define EPD_BUSY_PIN GPIO_Pin_8 //PA8

//各个引脚的拉高拉低
#define CS_HIGH GPIOA_SetBits(EPD_CS_PIN) 
#define CS_LOW GPIOA_ResetBits(EPD_CS_PIN)
#define DC_HIGH GPIOA_SetBits(EPD_DC_PIN)
#define DC_LOW GPIOA_ResetBits(EPD_DC_PIN)
#define RES_HIGH GPIOA_SetBits(EPD_RES_PIN)
#define RES_LOW GPIOA_ResetBits(EPD_RES_PIN)

//读取busy脚,注意只会返回0或者非0值，所以不可用==1
#define IS_BUSY GPIOA_ReadPortPin(EPD_BUSY_PIN)
#define devDelay(n) mDelaymS(n) //这里用回正常的机器delay。
#define WAIT_BUSY while(IS_BUSY)

#define EPD_WIDTH 128
#define EPD_HEIGHT 296

//这个宏定义控制EPD是正着显示还是反着显示。
//正着显示可以用DMA发送会更快，如果应用层面允许
//尽量使用REVERSED 0
#define REVERSED 1

void EPD_Hal_Init(void);
void EPD_Init(void);
void EPD_Update(void);
void EPD_PartialUpdate(void);
void EPD_Clear(void);
void EPD_Sleep(void);
void EPD_SendDisplay(uint8_t *image);
void EPD_PartialDisplay(uint8_t *image);
#endif
