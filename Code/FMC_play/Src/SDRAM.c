/*
 * SDRAM.c
 *
 *  Created on: 8 Nov 2019
 *      Author: Jesse
 */

#include "SDRAM.h"



volatile uint32_t * SDRAM_BASE =  (volatile uint32_t *)SDRAM_BANK1_ADDR;
HAL_StatusTypeDef SDRAM_state;

uint8_t SDRAM_init(SDRAM_HandleTypeDef * hsdram)
{
	FMC_SDRAM_CommandTypeDef cmd;
	uint32_t mode_reg = 0;
	uint32_t cntRAM;
	uint32_t Check = 0;

	cmd.CommandMode = FMC_SDRAM_CMD_CLK_ENABLE;
	cmd.CommandTarget = FMC_SDRAM_CMD_TARGET_BANK1;
	cmd.AutoRefreshNumber = 8;
	cmd.ModeRegisterDefinition = FMC_SDRAM_NORMAL_MODE;
	SDRAM_state = HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT);
	HAL_Delay(1);

	cmd.CommandMode = FMC_SDRAM_CMD_PALL;
	SDRAM_state = HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT);

	cmd.CommandMode = FMC_SDRAM_CMD_AUTOREFRESH_MODE;
	SDRAM_state = HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT);

	mode_reg = (uint32_t)	SDRAM_MODEREG_BURST_LENGTH_1 |
							SDRAM_MODEREG_BURST_TYPE_SEQUENTIAL |
							SDRAM_MODEREG_CAS_LATENCY_2 |
							SDRAM_MODEREG_OPERATING_MODE_STANDARD |
							SDRAM_MODEREG_WRITEBURST_MODE_BURST;

	cmd.CommandMode = FMC_SDRAM_CMD_LOAD_MODE;
	cmd.ModeRegisterDefinition = mode_reg;
	SDRAM_state = HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT);

	SDRAM_state = HAL_SDRAM_ProgramRefreshRate(hsdram, 6);
	for (cntRAM = 0; cntRAM < 0x800000; cntRAM++)
	{
		SDRAM_BASE[cntRAM] = cntRAM;
	}
	Check = SDRAM_BASE[0x7FFFFF];
	HAL_Delay(1);
	SDRAM_BASE[0] = Check;
	return 1;
}
