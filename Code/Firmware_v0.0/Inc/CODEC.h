/*
 * CODEC.c
 *
 *  Created on: 7 mei 2018
 *      Author: Jesse Laptop
 */

#ifndef CODEC_C_
#define CODEC_C_



#endif /* CODEC_C_ */
#include "stm32h7xx_hal.h"

//extern uint8_t SendSamples[32];

void CODEC_Init_TDM(SPI_HandleTypeDef);
void CODEC_Deinit(SPI_HandleTypeDef);
void CODEC_Write(SPI_HandleTypeDef, uint8_t, uint8_t);
void CODEC_Init_OLM2_M(SPI_HandleTypeDef);
void CODEC_Init_OLM2_S(SPI_HandleTypeDef);
