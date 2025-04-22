/*
DHT11驱动程序

*/

#include "DHT11.h"

//初始化外设
void DHT11_Init(void)
{
	WIRE_OUT();
	WIRE_HIGH();
}

static inline uint8_t Wire_read(void)
{
	uint32_t i = 0;
	while( READWIRE()==0 );//等待总线拉高
	while( READWIRE()!=0 ) //计算高电平的宽度，30us以下是0，70us是1
	{
		i++;
		DHT11_DelayUs(10);
	}
	
	return (i>4 ? 1 : 0 );
	
}

//读入数据并写到所指的pointer中
//传入一个4元素数组,第一个为湿度值整数，第二个为湿度值小数（DHT11永远是0）
//第三个为温度值整数，第四个为温度值小数
//如果检测不到DHT11，会把第一个数据写成0xFF
//如果checksum失败，会把第一个数据写成0x7F
void DHT11_Read(uint8_t *pTr)
{
	int32_t i = 0;

    //发出开始信号，将总线拉低18ms以上。
	WIRE_OUT();
	WIRE_LOW();
	DHT11_DelayMs(19);
	WIRE_HIGH();
	WIRE_IN();//切换到输入，此时会被内置上拉电阻拉高。
	
	//等待DHT11的回复。
	while( READWIRE()!=0 )
	{
		i++;
		if( i>5 )
		{
			//如果50us后还没拉低，说明DHT11没回复
			pTr[0] = 0xFF;
		    return;
		} 
		DHT11_DelayUs(10);
	}
	
	//DHT11回复了，开始读入数据
	while( READWIRE()==0 );//等待总线拉高
	while( READWIRE()!=0 );//等待总线拉低，拉低之后数据传输正式开始	

	//首先读取四位数值
	uint8_t temp=0;
	for(int j = 0; j < 4; j++)
	{
		pTr[j] = 0;
		for(i = 0; i < 8; i++ )
		{
			pTr[j] |= (Wire_read()<<(7-i));
		}
		temp+=pTr[j];//计算checksum
    }

	//读取checksum
    uint8_t checksum=0;
  	for(i = 0; i < 8; i++ )
	{
		checksum |= (Wire_read()<<(7-i));
	}

	//如果checksum不对，则把第一个数据写成0x7F
	if(checksum!=temp){
		pTr[0] = 0x7F;
	}
    
    return;
}
