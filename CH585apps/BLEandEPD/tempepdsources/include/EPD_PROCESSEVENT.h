/*
 * EPD_PROCESSEVENT.h
 *
 *  Created on: Mar 17, 2025
 *      Author: QJC
 */

#ifndef INCLUDE_EPD_PROCESSEVENT_H_
#define INCLUDE_EPD_PROCESSEVENT_H_



#endif /* INCLUDE_EPD_PROCESSEVENT_H_ */

void EPDTsk_Init(void);

extern uint8_t epd_taskID;

#define EPD_START_DEVICE_EVT    1
#define EPD_UPDATE_EVT        2
#define EPD_WAITBUSY            4
#define EPD_AUTOUPDATE         8
