/*
AHT10主程序

*/
#include "CH58x_common.h"
#include "AHT10.h"

//初始化相关IO口
void AHT10_Init(void)
{
	//I2C引脚在PB12和PB13
	GPIOB_ModeCfg(GPIO_Pin_12 | GPIO_Pin_13, GPIO_ModeIN_PU);
	//初始化I2C控制器
	I2C_Init(I2C_Mode_I2C, 200000, I2C_DutyCycle_16_9, I2C_Ack_Enable, I2C_AckAddr_7bit, 0x44);
	
	//判忙
	while(I2C_GetFlagStatus(I2C_FLAG_BUSY) != RESET);
	return;
}

//读数据。
void AHT10_Read(uint8_t *dataBuffer)
{
	//产生起始信号
	I2C_GenerateSTART(ENABLE);
	//判忙
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
    //发送从机地址,AHT10从机地址为0x38
    //坑：wch的驱动可不管最后一位，所以发送的地址数据
    //需要自己左移一位。
    I2C_Send7bitAddress((0x38<<1), I2C_Direction_Transmitter);

    if(I2C_CheckEvent(I2C_EVENT_SLAVE_ACK_FAILURE)){
    		
    		return;
    	}
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));

	
	//发送开始测量的数据
	uint8_t TxData[3] = {0xac,0x33,0x00};
	int i = 0;
	while( i < 3 )
    {
        if(I2C_GetFlagStatus(I2C_FLAG_TXE) != RESET)
        {
            I2C_SendData(TxData[i]);
            i++;
        }
    }

    while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
    I2C_GenerateSTOP(ENABLE);

    DelayMs(30);//厂家说等待75ms，实测大概需要38ms。
    
readdata:

	DelayMs(8);
	//查询温湿度数据
	//产生起始信号
	I2C_GenerateSTART(ENABLE);
	//判忙
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
    //发送从机地址，要求读取，等待转换为接受模式
    I2C_Send7bitAddress((0x38<<1), I2C_Direction_Receiver);
    while(!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));

	i=0;
	//开始接收数据
	while( i < 6 )
    {
        if(I2C_GetFlagStatus(I2C_FLAG_RXNE) != RESET)
        {
            dataBuffer[i] = I2C_ReceiveData();
            i++;
        }
    }

    while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED));
    I2C_GenerateSTOP(ENABLE);
    
	//如果判忙位是1，说明传感器还在读数据，回去继续等。
    if( dataBuffer[0]&(1UL<<7) ){
    	goto readdata;//goto不咬人。
    }
	return;
}
