/****************************************************************
 * File Name          : Main.c
 * Author             : JCQ
 * Version            : V1.0
 * Date               : 2025/04/07
 * Description        : 裸机驱动墨水屏
 *********************************************************************************/
#include "CH58x_common.h"
#include "AHT10.h"
#include "main.h"

static void GPIOInit(void)
{
	GPIOB_ModeCfg(GPIO_Pin_3,GPIO_ModeOut_PP_5mA);
	GPIOB_SetBits(GPIO_Pin_3);
}

static void UART0_Init(void)
{
	GPIOB_SetBits(GPIO_Pin_7);
    GPIOB_ModeCfg(GPIO_Pin_4, GPIO_ModeIN_PU);
    GPIOB_ModeCfg(GPIO_Pin_7, GPIO_ModeOut_PP_5mA);
    UART0_DefInit();
    R8_UART0_THR = 's';
}

void main(void)
{
	//在sys.c里已经写了highcode_init，并且会放到startup之后
	//所以在这里初始化时钟是不必要的
	GPIOInit();//初始化PB03的小灯
	UART0_Init();//初始化串口。注意这里没用print
	GPIOB_ResetBits(GPIO_Pin_3);//小灯开启，示意开始读数
	AHT10_Init();//初始化AHT10
	uint8_t AHTdata[6] = {0};//初始化一个数组装温湿度数据
	AHT10_Read(AHTdata); //读数
	GPIOB_SetBits(GPIO_Pin_3); //小灯关闭，示意读取完成
	for(int i =0;i<6;i++) //串口发送数据。
	{
		R8_UART0_THR = AHTdata[i];
	}

	//计算温湿度。这里先只保留整数，如需小数，乘法部分多乘两个零，然后
	//分别取千和百位为整数，十和个位为小数即可。
    uint32_t HUMID = ((uint32_t)AHTdata[1]<<12) |
	((uint32_t)AHTdata[2]<<4) |
	(AHTdata[3]>>4);
	HUMID *= 100;
	HUMID = HUMID >> 20;

	uint32_t TEMPERATURE = ((uint32_t)(AHTdata[3]&0x0F) << 16) |
	((uint32_t)AHTdata[4] << 8) |
	AHTdata[5];
	TEMPERATURE *= 200;
	TEMPERATURE = TEMPERATURE >> 20;
	TEMPERATURE -= 50;

	 
	R8_UART0_THR = (uint8_t)HUMID;
	R8_UART0_THR = (uint8_t)TEMPERATURE;
	while( 1 ); //死掉，如果需要再读一次直接reset即可。

}
