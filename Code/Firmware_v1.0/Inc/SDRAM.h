/*-----INCLUDES-----*/
#include <stdint.h>
#include "stm32h7xx_hal.h"
/*-----SYSTEM DEFINES-----*/
#define SDRAM_BANK1_ADDR ((uint32_t)0xC0000000)

#define SDRAM_OK		0
#define SDRAM_CLK_ERR 	-1
#define SDRAM_PALL_ERR 	-2
#define SDRAM_ARFR_ERR 	-4
#define SDRAM_LOAD_ERR 	-8
#define SDRAM_PRR_ERR 	-16

#define __AS4C32M8SA_7TCN

/*-----FUNCTION PROTOTYPES---*/
int SDRAM_Init(SDRAM_HandleTypeDef * hsdram);







/*-----RAM DEFINES-----*/
#ifdef __AS4C32M8SA_7TCN


#define SDRAM_TIMEOUT     						((uint32_t)0xFFFF)

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

#endif

/*__________________________________________________________________*/
