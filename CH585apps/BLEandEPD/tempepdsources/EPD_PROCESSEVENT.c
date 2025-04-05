/*
 * EPD_PROCESSEVENT.c
 *
 *  Created on: Mar 17, 2025
 *      Author: QJC
 */
#include "CONFIG.h"
#include "EPD_PROCESSEVENT.h"
#include "EPD_2in9_V2.h"
#include "SPI_Init.h"
#include "imageData.h"
#include "GUI_Paint.h"
#include "stdlib.h"

char msg_to_display[20] = {0};//需要显示的message。
volatile uint8_t rxdata = 2;
uint8_t epd_taskID;
uint8_t epd_refreshtimes = 255;

__attribute__((aligned(4))) UBYTE BlackImage[4736]; //四字节对齐

uint16_t EPD_ProcessEvent(uint8_t task_id, uint16_t events);

void EPDTsk_Init(){
    epd_taskID = TMOS_ProcessEventRegister(EPD_ProcessEvent);//注册事件。
    //初始化SPI和要用到的引脚
     GPIOA_ModeCfg(EPD_SCL_GPIO_PIN|EPD_SDA_GPIO_PIN|EPD_RES_GPIO_PIN|EPD_DC_GPIO_PIN|EPD_CS_GPIO_PIN,GPIO_ModeOut_PP_5mA);//初始化PA的SPI输出
     GPIOB_ModeCfg(EPD_BUSY_GPIO_PIN,GPIO_ModeIN_Floating);//初始化PB的busy读入引脚
     SPI0_MasterDefInit();//3线半双工
     EPD_2IN9_V2_Init();
     EPD_2IN9_V2_Sleep();

     Paint_NewImage(BlackImage, EPD_2IN9_V2_WIDTH, EPD_2IN9_V2_HEIGHT, 270, WHITE); //创建新画布，顺时针旋转90度
     Paint_SelectImage(BlackImage);
     Paint_Clear(WHITE);
     //tmos_start_task(epd_taskID, EPD_AUTOUPDATE,150000);
}


uint16_t EPD_ProcessEvent(uint8_t task_id, uint16_t events)
{
    if(events & SYS_EVENT_MSG)
    {
        uint8_t *pMsg;

        if((pMsg = tmos_msg_receive(task_id)) != NULL)
        {
            tmos_memcpy(msg_to_display,pMsg,20);   //复制消息。
            msg_to_display[19] = '\0'; //最后一个应该是截止符。
            tmos_msg_deallocate(pMsg);            // 释放消息内存。
            tmos_set_event(epd_taskID, EPD_UPDATE_EVT);//要求EPD进行显示。


        }
        // return unprocessed events
        return (events ^ SYS_EVENT_MSG);
    }
    if(events & EPD_START_DEVICE_EVT)
    {
        //在这里放入EPD的初始化函数...?

        return events ^ EPD_START_DEVICE_EVT;
    }
    if(events & EPD_UPDATE_EVT)
    {
        //这里放刷新函数。
        Paint_Clear(WHITE);
        Paint_DrawString_EN(128, 26, "YAY", &Font16, WHITE, BLACK);
        Paint_DrawString_EN(15, 46, msg_to_display, &Font16, WHITE, BLACK);
        if(epd_refreshtimes>10)
        {
            epd_refreshtimes = 0;
            EPD_2IN9_V2_Init();
            EPD_2IN9_V2_Display_Base(BlackImage);
        } 
        else 
        {
           epd_refreshtimes++;
           EPD_2IN9_V2_Display_Partial(BlackImage);
        }
        return events ^ EPD_UPDATE_EVT;
    }
    if (events & EPD_WAITBUSY){
        if(GPIOB_ReadPortPin(GPIO_Pin_4)!=0){
            tmos_start_task(epd_taskID, EPD_WAITBUSY,10);
        } else {
            EPD_2IN9_V2_Sleep();
        }

        return events ^ EPD_WAITBUSY;
    }

    if (events & EPD_AUTOUPDATE){
        tmos_memset(msg_to_display, 0, 20);
        tmos_memcpy(msg_to_display,(char *)"auto update.",20);
        tmos_start_task(epd_taskID, EPD_AUTOUPDATE, 302000);
        tmos_set_event(epd_taskID, EPD_UPDATE_EVT);

        return events ^ EPD_AUTOUPDATE;

    }


    return 0;
}


