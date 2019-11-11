#include <stdint.h>
#include "stm32h7xx_hal.h"

#ifndef __AS4C32M8SA_7TCN
#define __AS4C32M8SA_7TCN

#define SDRAM_TIMEOUT     ((uint32_t)0xFFFF)

#define SDRAM_MODEREG_BURST_LENGTH_1            ((uint16_t)0x0000)
#define SDRAM_MODEREG_BURST_LENGTH_2            ((uint16_t)0x0001)
#define SDRAM_MODEREG_BURST_LENGTH_4            ((uint16_t)0x0002)
#define SDRAM_MODEREG_BURST_LENGTH_8            ((uint16_t)0x0004)

#define SDRAM_MODEREG_BURST_TYPE_SEQUENTIAL     ((uint16_t)0x0000)
#define SDRAM_MODEREG_BURST_TYPE_INTERLEAVED    ((uint16_t)0x0008)

#define SDRAM_MODEREG_CAS_LATENCY_2             ((uint16_t)0x0020)
#define SDRAM_MODEREG_CAS_LATENCY_3             ((uint16_t)0x0030)

#define SDRAM_MODEREG_OPERATING_MODE_STANDARD   ((uint16_t)0x0000)

#define SDRAM_MODEREG_WRITEBURST_MODE_BURST 	((uint16_t)0x0000)
#define SDRAM_MODEREG_WRITEBURST_MODE_SINGLE    ((uint16_t)0x0200)

#define SDRAM_BANK1_ADDR ((uint32_t)0xC0000000)


/*-----------------------------------------------*/
uint8_t SDRAM_init(SDRAM_HandleTypeDef * hsdram);
/*-----------------------------------------------*/


#endif



