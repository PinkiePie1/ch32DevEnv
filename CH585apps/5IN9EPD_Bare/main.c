
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
	EPD_Hal_Init();
	GPIOB_ResetBits(GPIO_Pin_0);
	GPIOB_ModeCfg(GPIO_Pin_3|GPIO_Pin_0,GPIO_ModeOut_PP_5mA);
	GPIOB_SetBits(GPIO_Pin_3);
}

void main(void)
{
	//在sys.c里已经写了highcode_init，并且会放到startup之后
	//所以在这里初始化时钟是不必要的。	
	tickDelayInit();
	GPIOInit();

	GPIOB_ResetBits(GPIO_Pin_3);
	GPIOB_SetBits(GPIO_Pin_0);
	
	paint_SetImageCache(imageCache);


	fastDrawString(500,50,"Full refresh test.",font16);
	 fastDrawString(792,271-16,"~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM",font16);

	//drawLine(0,70,791,70,BLACK);
	//drawRect(10,10,50,50,BLACK);
	//fillRect(791-10,10,791-50,50,BLACK);
	//drawRect(0,0,791,271,BLACK);
	GPIOB_ResetBits(GPIO_Pin_0);
	GPIOB_SetBits(GPIO_Pin_3);

	EPD_Init();	
	EPD_SendDisplay(imageCache);
	EPD_PreparePartial(imageCache);
    EPD_Sleep();

    GPIOB_SetBits(GPIO_Pin_3);

    uint8_t refresh = 1;
    DelayMs(3500);
    fastDrawString(500,30,"Partial test.",font16);
    while(refresh<11)
    {
	    DelayMs(500);
		fastDrawString(791-refresh*8,271-16,"~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM~.1234567890!@#$%^&*()-=_+qwertyuiop[]{}|asdfghjklzxcvbnm,.?<>:QWERTYUIOPASDFGHJKLZXCVBNM",font16);
	    

	    EPD_PartialDisplay(imageCache);
	    EPD_Sleep();
	    refresh++;
    }


    DelayMs(10000);
    EPD_Init();
    EPD_Clear();
    EPD_Sleep();
  
	while( 1 )
	{
		GPIOB_InverseBits(GPIO_Pin_3);
		DelayMs(500);
	}
	
}


/*********************************************************************
 * @fn      PM_LowPower_Sleep
 *
 * @brief   调用Sleep睡眠驱动，此函数需要在RAM中运行
 *
 * @return  none
 */
__HIGH_CODE
void PM_LowPower_Sleep(void)
{
    uint32_t t;
    uint8_t wake_ctrl;
    unsigned long irq_status;

    //切换内部时钟
    sys_safe_access_enable();
    R8_HFCK_PWR_CTRL |= RB_CLK_RC16M_PON;
    R16_CLK_SYS_CFG &= ~RB_OSC32M_SEL;
    sys_safe_access_disable();
    LowPower_Sleep(RB_PWR_RAM32K | RB_PWR_EXTEND |RB_XT_PRE_EN); //只保留96+32K SRAM 供电
    // 此时外部时钟不稳定，且flash未准备好，只能运行RAM中代码
    SYS_DisableAllIrq(&irq_status);
    wake_ctrl = R8_SLP_WAKE_CTRL;
    sys_safe_access_enable();
    R8_SLP_WAKE_CTRL = RB_WAKE_EV_MODE | RB_SLP_RTC_WAKE; // RTC唤醒
    sys_safe_access_disable();
    sys_safe_access_enable();
    R8_RTC_MODE_CTRL |= RB_RTC_TRIG_EN;  // 触发模式
    sys_safe_access_disable();
    t = RTC_GetCycle32k() + 60000;
    if(t > RTC_MAX_COUNT)
    {
        t -= RTC_MAX_COUNT;
    }

    sys_safe_access_enable();
    R32_RTC_TRIG = t;
    R8_RTC_MODE_CTRL |= RB_RTC_TRIG_EN;
    sys_safe_access_disable();
    FLASH_ROM_SW_RESET();
    R8_FLASH_CTRL = 0x04; //flash关闭

    PFIC->SCTLR &= ~(1 << 2); // sleep
    __WFE();
    __nop();
    __nop();
    R8_RTC_FLAG_CTRL = (RB_RTC_TMR_CLR | RB_RTC_TRIG_CLR);
    sys_safe_access_enable();
    R8_SLP_WAKE_CTRL = wake_ctrl;
    sys_safe_access_disable();
    HSECFG_Current(HSE_RCur_100); // 降为额定电流(低功耗函数中提升了HSE偏置电流)
    //切换外部时钟
    SetSysClock(CLK_SOURCE_HSE_PLL_62_4MHz);
    SYS_RecoverIrq(irq_status);

}
