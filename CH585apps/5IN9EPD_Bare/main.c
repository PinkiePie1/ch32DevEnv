
/****************************************************************
 * File Name          : Main.c
 * Author             : JCQ
 * Version            : V1.0
 * Date               : 2025/04/07
 * Description        : 裸机驱动墨水屏
 *********************************************************************************/
#include "CH58x_common.h"
#include "main.h"
#include <stdio.h>

//显存，为了提高memcpy的速度需要四字节对齐。
__attribute__((aligned(4))) uint8_t imageCache[26928] = {0};

//睡眠用函数
__HIGH_CODE
void PM_LowPower_Sleep(void);

static void GPIOInit(void)
{	
	GPIOA_ModeCfg(GPIO_Pin_All, GPIO_ModeIN_PD);//所有引脚上拉减少睡眠电流
    GPIOB_ModeCfg(GPIO_Pin_All, GPIO_ModeIN_PD);
	EPD_Hal_Init();
	GPIOB_ResetBits(GPIO_Pin_0);
	GPIOB_ModeCfg(GPIO_Pin_3|GPIO_Pin_0,GPIO_ModeOut_PP_5mA);
	GPIOB_SetBits(GPIO_Pin_3);
    GPIOA_ModeCfg(GPIO_Pin_8, GPIO_ModeIN_PU);
    GPIOA_ITModeCfg(GPIO_Pin_8, GPIO_ITMode_FallEdge); // 下降沿唤醒
    PFIC_EnableIRQ(GPIO_A_IRQn);
    PWR_PeriphWakeUpCfg(ENABLE, RB_SLP_GPIO_WAKE, Long_Delay); 
}

void main(void)
{
	//在sys.c里已经写了highcode_init，并且会放到startup之后
	//所以在这里初始化时钟是不必要的。	
	GPIOInit();
	
	paint_SetImageCache(imageCache);


	fastDrawString(500,50,"Full refresh test.",font16);
	 fastDrawString(792,271-16,"~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM",font16);


	EPD_Init();	
	EPD_SendDisplay(imageCache);
	EPD_PreparePartial(imageCache);
    EPD_Sleep();

    uint8_t refresh = 1;
    DelayMs(3500);
    fastDrawString(500,30,"Partial test.",font16);
    while(refresh<3)
    {
	    DelayMs(500);
		fastDrawString(791-refresh*8,271-16,"~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM",font16);
	    EPD_PartialDisplay(imageCache);
	    EPD_Sleep();
	    refresh++;
    }


    DelayMs(3000);
    EPD_Init();
    EPD_Clear();
    EPD_Sleep();

	uint32_t i=0;
	while(i<4294967290)
	{
		i++;
		memset(imageCache,0,26928);
		fastDrawString(792/2,271/2,"This counter goes up every half minute.",font16);
		char buffer[30];
		snprintf(buffer,30,"%ld",i);
		buffer[29] = 0;
		fastDrawString(792/2,271/2-20,buffer,font16);
		if (i%8==0){
			EPD_Init();	
			EPD_SendDisplay(imageCache);
			EPD_PreparePartial(imageCache);
		} else {
			EPD_PartialDisplay(imageCache);
		}
		EPD_Sleep();
		DelayMs(30000);
    	
    }
  
	while( 1 )
	{
		GPIOB_InverseBits(GPIO_Pin_3);
		DelayMs(500);
	}
	
}


__INTERRUPT
__HIGH_CODE
void GPIOA_IRQHandler(void)
{
    GPIOA_ClearITFlagBit(GPIO_Pin_8);
}

