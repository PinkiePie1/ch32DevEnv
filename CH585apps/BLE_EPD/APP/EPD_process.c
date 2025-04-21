/*
 * EPD相关任务的主程序
 * 
 *
 *
 *
 */

#include "EPD_process.h"
#include "miniGUI.h"
#include "CONFIG.h"
#include "imageData.h"

#define INIT_CACHE tmos_memset(imageCache,0x00,4736)

__attribute__((aligned(4))) __attribute__((section(".lowram"))) uint8_t imageCache[4736];//显存，放在低96k，因此每次睡眠之后内容会消失。
uint8_t refreshTimes = 250;
uint8_t EPD_taskID = INVALID_TASK_ID;
uint8_t *MsgToDisplay;
uint16_t EPD_ProcessEvent(uint8_t task_id, uint16_t events);


static inline void EPD_UpdateScreen(char *buffer)
{
	if(refreshTimes>=10)
	{
		refreshTimes = 0;
		EPD_Init();	
		EPD_SendDisplay(buffer);
		
	} else {
		refreshTimes++;
		EPD_PartialDisplay(buffer);
		
	}

}


void EPDTask_Init(void)
{
	EPD_taskID = TMOS_ProcessEventRegister(EPD_ProcessEvent);
	EPD_Hal_Init();
	EPD_Init();
	EPD_Sleep();
	paint_SetImageCache(imageCache);

}

uint16_t EPD_ProcessEvent(uint8_t task_id, uint16_t events)
{
	if(events & SYS_EVENT_MSG) //系统消息事件，所有task都有。
    {
        if((MsgToDisplay = tmos_msg_receive(task_id)) != NULL)
        {	
        	if(MsgToDisplay[0] == 0x11)
        	{
            	tmos_set_event(EPD_taskID, EPD_SHOWMSG_EVT);
            }
            else if (MsgToDisplay[0] == 0x22)
            {
            	tmos_set_event(EPD_taskID, EPD_SHOWCONNECT_EVT);
            }
        }
        return (events ^ SYS_EVENT_MSG);
        
    }

    if(events & EPD_SHOWMSG_EVT)
    {
    	INIT_CACHE; //醒来时EPD的RAM重新上电是随机的，需要清空。
    	fastRect(0,0,127,295,BLACK);
    	drawStr(10,290,"Received Msg:",font14,WHITE);
    	fastDrawString(24,290,MsgToDisplay+1,font14);
        tmos_msg_deallocate(MsgToDisplay); // 释放消息内存。
        EPD_UpdateScreen(imageCache);
        return (events ^ EPD_SHOWMSG_EVT);
    }

    if(events & EPD_WAITBUSY)
    {
    	if(IS_BUSY)
    	{
       		tmos_start_task(EPD_taskID, EPD_WAITBUSY,10);
        } else {
            EPD_Sleep();
        }
        return events ^ EPD_WAITBUSY;
        
    }

    if(events & EPD_SHOWCONNECT_EVT)
    {
    	INIT_CACHE;
    	EPD_Printf(38,260,font14,BLACK,"Connected.");
    	EPD_Printf(10,260,font14,WHITE,"Start @ChipID=%02X",R8_CHIP_ID);
		EPD_Printf(24,260,font14,BLACK,"SysClock:%ld",GetSysClock());
		EPD_Printf(52,260,font14,BLACK,"Host Addr:%02X:%02X:%02X:%02X:%02X:%02X",MsgToDisplay[1],MsgToDisplay[2],MsgToDisplay[3],MsgToDisplay[4],MsgToDisplay[5],MsgToDisplay[6]);
		tmos_msg_deallocate(MsgToDisplay);
		EPD_UpdateScreen(imageCache);
    	return events ^ EPD_SHOWCONNECT_EVT;
    }

    if(events & EPD_SHOWIMG_EVT)
    {
    	INIT_CACHE;
		FastImg(147,295,gImage_full+16*10);
		drawLine(0,147,127,147,BLACK);
		fastRect(0,0,127,295,BLACK);
		fastDrawString(10,145,"You wrote 0x1A to Char1, showing    image at left.",font14);
    	EPD_UpdateScreen(imageCache);
    	return events ^ EPD_SHOWIMG_EVT;
    }


    return 0;//清零未定义的event id。
	
}
