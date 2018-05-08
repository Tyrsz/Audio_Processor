#include "SDRAM.h"
#include "stm32h7xx_hal.h"


void SDRAM_init(SDRAM_HandleTypeDef hsdram1)
{

	  FMC_SDRAM_CommandTypeDef Command;
	  Command.CommandMode = FMC_SDRAM_CMD_CLK_ENABLE;
	  Command.CommandTarget = FMC_SDRAM_CMD_TARGET_BANK1;
	  Command.AutoRefreshNumber = 1;
	  Command.ModeRegisterDefinition = 0;
	  HAL_SDRAM_SendCommand(&hsdram1, &Command, 0xffff);

	  HAL_Delay(1);

	  Command.CommandMode = FMC_SDRAM_CMD_PALL;
	  Command.CommandTarget = FMC_SDRAM_CMD_TARGET_BANK1;
	  Command.AutoRefreshNumber = 1;
	  Command.ModeRegisterDefinition = 0;
	  HAL_SDRAM_SendCommand(&hsdram1, &Command, 0xffff);

	  Command.CommandMode = FMC_SDRAM_CMD_AUTOREFRESH_MODE;
	  Command.CommandTarget = FMC_SDRAM_CMD_TARGET_BANK1;
	  Command.AutoRefreshNumber = 8;
	  Command.ModeRegisterDefinition = 0;
	  HAL_SDRAM_SendCommand(&hsdram1, &Command, 0xffff);

	  __IO uint32_t tmpmrd = (uint32_t)SDRAM_MODEREG_BURST_LENGTH_1		|\
	                      SDRAM_MODEREG_BURST_TYPE_SEQUENTIAL   		|\
	                      SDRAM_MODEREG_CAS_LATENCY_3           		|\
	                      SDRAM_MODEREG_OPERATING_MODE_STANDARD 		|\
	                      SDRAM_MODEREG_WRITEBURST_MODE_SINGLE;
	   Command.CommandMode = FMC_SDRAM_CMD_LOAD_MODE;
	   Command.CommandTarget = FMC_SDRAM_CMD_TARGET_BANK1;
	   Command.AutoRefreshNumber = 1;
	   Command.ModeRegisterDefinition = tmpmrd;
	   HAL_SDRAM_SendCommand(&hsdram1, &Command, 0xffff);
	   HAL_SDRAM_ProgramRefreshRate(&hsdram1, 9);

}

/*SDRAM TEST start*/
/*BLUE_GPIO_Port->BSRRL = BLUE_Pin;
HAL_SDRAM_Write_8b(&hsdram1, 0x0000, TestOut, TestBlock);
BLUE_GPIO_Port->BSRRH = BLUE_Pin;
HAL_SDRAM_Read_8b(&hsdram1, 0x0500, TestIn, TestBlock);*/
/*SDRAM TEST end*/
