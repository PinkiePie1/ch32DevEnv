/****************************************************************
 * File Name          : Main.c
 * Author             : JCQ
 * Version            : V1.0
 * Date               : 2025/04/07
 * Description        : 裸机驱动墨水屏
 *********************************************************************************/
#include "CH58x_common.h"
#include "DHT11.h"
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
}

void main(void)
{
	//在sys.c里已经写了highcode_init，并且会放到startup之后
	//所以在这里初始化时钟是不必要的
	GPIOInit();//初始化PB03的小灯
	UART0_Init();//初始化串口。注意这里没用print
	DHT11_Init();//初始化DHT11的GPIO引脚

	GPIOB_ResetBits(GPIO_Pin_3);//小灯开启，示意开始读数
	uint8_t DHTdata[4] = {0};//初始化一个数组装温湿度数据
	DHT11_Read(DHTdata); //读数
	GPIOB_SetBits(GPIO_Pin_3); //小灯关闭，示意读取完成
	for(int i =0;i<4;i++) //串口发送数据。
	{
		R8_UART0_THR = DHTdata[i];
	}

	while( 1 ); //死掉，如果需要再读一次直接reset即可。

}
