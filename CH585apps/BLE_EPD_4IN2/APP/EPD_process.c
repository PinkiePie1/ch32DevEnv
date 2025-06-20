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

//清空显存。低96k睡眠的时候是内容丢失的，以省电。每次唤醒都应清空再写东西，否则所有比特值均为随机
#define INIT_CACHE tmos_memset(imageCache,0x00,15000)

__attribute__((aligned(4))) __attribute__((section(".lowram"))) uint8_t imageCache[15000];//显存，放在低96k
uint8_t refreshTimes = 250;//刷新次数计数
uint8_t EPD_taskID = INVALID_TASK_ID; //TMOS使用，任务处理的taskid
uint8_t *MsgToDisplay; //指向传入消息的指针，tmos使用。
uint16_t EPD_ProcessEvent(uint8_t task_id, uint16_t events);//任务处理主函数

//函数内容是更新屏幕，如果更新次数超过10次则执行全刷，否则执行局刷
//输入是显存。你也可以输入一个指向flash中的数组的指针，从而将数组内容显示上去
//这在需要放全屏图像的时候会很有用。
static inline void EPD_UpdateScreen(char *buffer)
{
	if(refreshTimes>=10)
	{
		refreshTimes = 0;
		EPD_Init();	
		EPD_SendDisplay(buffer);
		EPD_PreparePartial(buffer);
		tmos_start_task(EPD_taskID, EPD_WAITBUSY,1400);
		//等待一段时间之后开始判忙，判断EPD刷新是否结束。
		//这里填入一个比刷新时间略小的值最好。
		
	} else {
		refreshTimes++;
		EPD_PartialDisplay(buffer);
		tmos_start_task(EPD_taskID, EPD_WAITBUSY,640);
		//局刷会快一点，所以填的值更小。
		
	}
	

}

//墨水屏相关外设初始化，包括注册任务ID供EPD调用，GPIO和SPI主机初始化，随后初始化
//屏幕本身并使其睡眠以降低功耗，最后把显存指针传给显示内容驱动程序。
void EPDTask_Init(void)
{
	EPD_taskID = TMOS_ProcessEventRegister(EPD_ProcessEvent);
	EPD_Hal_Init();
	EPD_Init();
	EPD_Sleep();
	paint_SetImageCache(imageCache);

}

//EPD相关人物处理主函数。
uint16_t EPD_ProcessEvent(uint8_t task_id, uint16_t events)
{
	//系统消息事件，所有task都有。
	//这里将消息的第一个字节作为指示位，来指示EPD做不同的事情
	//这在同时需要指示EPD显示并需要动态地从其他任务给EPD传递内容时很有用
	//但注意在处理完消息之后要释放消息内存。
	if(events & SYS_EVENT_MSG) 
    {
        if((MsgToDisplay = tmos_msg_receive(task_id)) != NULL)
        {	
        	if(MsgToDisplay[0] == 0x11) //如果收到的消息第一个是0x11，则直接显示消息数组里其余内容
        	{
            	tmos_set_event(EPD_taskID, EPD_SHOWMSG_EVT);
            }
            else if (MsgToDisplay[0] == 0x22) //如果收到的消息内容是0x22，则显示蓝牙链接信息。
            {
            	tmos_set_event(EPD_taskID, EPD_SHOWCONNECT_EVT);
            }
        }
        return (events ^ SYS_EVENT_MSG);
        
    }

	//显示消息，将消息指针内剩余的内容显示出来
    if(events & EPD_SHOWMSG_EVT)
    {
    	INIT_CACHE; //醒来时EPD的RAM重新上电是随机的，需要清空。
    	fastDrawString(400,300-16,"Received Msg:",font16);
    	fastDrawString(400,300-32,MsgToDisplay+1,font16);
        tmos_msg_deallocate(MsgToDisplay); // 释放消息内存。
        EPD_UpdateScreen(imageCache);
        return (events ^ EPD_SHOWMSG_EVT);
        
    }

	//判忙，这里是轮询。TMOS中断不好用
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

	//显示链接信息
    if(events & EPD_SHOWCONNECT_EVT)
    {
    	INIT_CACHE;
    	EPD_Printf(400,300-16,font16,"Connected.");
    	EPD_Printf(400,300-16*2,font16,"Start @ChipID=%02X",R8_CHIP_ID);
		EPD_Printf(400,300-16*3,font16,"SysClock:%ld",GetSysClock());
		EPD_Printf(
			400,300-16*4,font16,
			"Host Addr:%02X:%02X:%02X:%02X:%02X:%02X",
			MsgToDisplay[1],MsgToDisplay[2],MsgToDisplay[3],
			MsgToDisplay[4],MsgToDisplay[5],MsgToDisplay[6]
		);
		
		tmos_msg_deallocate(MsgToDisplay);
		EPD_UpdateScreen(imageCache);
    	return events ^ EPD_SHOWCONNECT_EVT;
    }

	//显示图像，未实现。
    if(events & EPD_SHOWIMG_EVT)
    {
    	INIT_CACHE;
		fastDrawString(10,145,"You wrote 0x1A to Char1, showing    image at left.",font16);
    	EPD_UpdateScreen(imageCache);
    	return events ^ EPD_SHOWIMG_EVT;
    }


    return 0;//清零未定义的event id。
	
}
