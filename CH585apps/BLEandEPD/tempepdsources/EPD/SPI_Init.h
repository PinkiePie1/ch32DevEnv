#ifndef _SPI_INIT_H_
#define _SPI_INIT_H_

#include "CH58x_common.h"

typedef uint64_t  u64;
typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;


// SPI0参数
#define EPD_SCL_GPIO_PIN		GPIO_Pin_13   // PA13是串行时钟

#define EPD_SDA_GPIO_PIN		GPIO_Pin_14  // PA14是SDA或者MOSI脚

#define EPD_RES_GPIO_PIN		GPIO_Pin_5  // PA5当硬件reset脚

#define EPD_DC_GPIO_PIN			GPIO_Pin_4  // PA4当DC

#define EPD_CS_GPIO_PIN			GPIO_Pin_12 // PA12是CS

#define EPD_BUSY_GPIO_PIN		GPIO_Pin_4 //BUSY脚就用PB4

#define EPD_SCL_Clr() GPIOA_ResetBits(EPD_SCL_GPIO_PIN)
#define EPD_SCL_Set() GPIOA_SetBits(EPD_SCL_GPIO_PIN)

#define EPD_SDA_Clr() GPIOA_ResetBits(EPD_SDA_GPIO_PIN)
#define EPD_SDA_Set() GPIOA_SetBits(EPD_SDA_GPIO_PIN)

#define EPD_RES_Clr() GPIOA_ResetBits(EPD_RES_GPIO_PIN)
#define EPD_RES_Set() GPIOA_SetBits(EPD_RES_GPIO_PIN)

#define EPD_DC_Clr() GPIOA_ResetBits(EPD_DC_GPIO_PIN)
#define EPD_DC_Set() GPIOA_SetBits(EPD_DC_GPIO_PIN)

#define EPD_CS_Clr() GPIOA_ResetBits(EPD_CS_GPIO_PIN)
#define EPD_CS_Set() GPIOA_SetBits(EPD_CS_GPIO_PIN)

#define EPD_ReadBusy GPIOB_ReadPortPin(EPD_BUSY_GPIO_PIN)


void EPD_GPIOInit(void);  //初始化EPD对应GPIO口
void EPD_WR_Bus(u8 dat);	//写入一个字节
void EPD_WR_REG(u8 reg);	//写入指令
void EPD_WR_DATA8(u8 dat);//写入数据

#endif



