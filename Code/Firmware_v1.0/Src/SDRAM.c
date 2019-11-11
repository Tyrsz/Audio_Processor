/*-----INCLUDES-----*/
#include "SDRAM.h"

/*-----GLOBALS-----*/
volatile uint8_t * sdram_base_u8 =  (volatile uint8_t *)SDRAM_BANK1_ADDR;
volatile uint16_t * sdram_base_u16 =  (volatile uint16_t *)SDRAM_BANK1_ADDR;
volatile uint32_t * sdram_base_u32 =  (volatile uint32_t *)SDRAM_BANK1_ADDR;


/*-----FUNCTIONS-----*/
/*
 * @brief	Initialises SDRAM in predefined configuration
 * @param	hsdram: pointer to configuration info for SDRAM module
 * @retval	state
 *
 */
int SDRAM_Init(SDRAM_HandleTypeDef * hsdram)
{
	FMC_SDRAM_CommandTypeDef cmd;
	uint32_t mode_reg = 0;

	cmd.CommandMode = FMC_SDRAM_CMD_CLK_ENABLE;
	cmd.CommandTarget = FMC_SDRAM_CMD_TARGET_BANK1;
	cmd.AutoRefreshNumber = 8;
	cmd.ModeRegisterDefinition = FMC_SDRAM_NORMAL_MODE;
	if (HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT) != HAL_OK) return SDRAM_CLK_ERR;			//CLOCK ENABLE
	HAL_Delay(1);

	cmd.CommandMode = FMC_SDRAM_CMD_PALL;
	if (HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT) != HAL_OK) return SDRAM_PALL_ERR;		//PRECHARGE ALL

	cmd.CommandMode = FMC_SDRAM_CMD_AUTOREFRESH_MODE;
	if (HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT) != HAL_OK) return SDRAM_ARFR_ERR;		//AUTO REFRESH

	mode_reg = (uint32_t)	SDRAM_MODEREG_BURST_LENGTH_1 |
							SDRAM_MODEREG_BURST_TYPE_SEQUENTIAL |
							SDRAM_MODEREG_CAS_LATENCY_2 |
							SDRAM_MODEREG_OPERATING_MODE_STANDARD |
							SDRAM_MODEREG_WRITEBURST_MODE_BURST;

	cmd.CommandMode = FMC_SDRAM_CMD_LOAD_MODE;
	cmd.ModeRegisterDefinition = mode_reg;
	if (HAL_SDRAM_SendCommand(hsdram, &cmd, SDRAM_TIMEOUT) != HAL_OK) return SDRAM_LOAD_ERR;		//LOAD SETTINGS INTO RAM

	if (HAL_SDRAM_ProgramRefreshRate(hsdram, 6) != HAL_OK) return SDRAM_PRR_ERR;					//SET REFRESH RATE

	return SDRAM_OK;
}

/*
 * @
 */
int SDRAM_Clear(void)
{
	uint32_t cntRAM;
	for (cntRAM = 0; cntRAM < 0x2000000; cntRAM++)		//32MByte clear
	{
		sdram_base_u8[cntRAM] = (uint8_t)cntRAM;
	}
	if (sdram_base_u8[0]);
	if (sdram_base_u16[0]);
	if (sdram_base_u32[0]);
	return SDRAM_OK;
}
/*-----STATIC FUNCTIONS-----*/

