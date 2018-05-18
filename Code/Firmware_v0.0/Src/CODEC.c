/*
 * CODEC.C
 *
 *  Created on: 7 mei 2018
 *      Author: Jesse Laptop
 */


#include "CODEC.h"

#define Nope250ns for (uint8_t x = 0; x < 22; x++) asm("nop");
#define Nope1us for (uint8_t x = 0; x < 98; x++) asm("nop");

#define RST_L CODEC_NRST_GPIO_Port->BSRRH = CODEC_NRST_Pin;
#define RST_H CODEC_NRST_GPIO_Port->BSRRL = CODEC_NRST_Pin;

#define CS_L SPI5_NSS_GPIO_Port->BSRRH = SPI5_NSS_Pin;
#define CS_H SPI5_NSS_GPIO_Port->BSRRL = SPI5_NSS_Pin;

#define ANA_EN ANA_EN_GPIO_Port->BSRRL = ANA_EN_Pin;
#define ANA_DIS ANA_EN_GPIO_Port->BSRRH = ANA_EN_Pin;

void CODEC_Write(SPI_HandleTypeDef hspi5, uint8_t Adress, uint8_t Data)
{
	uint8_t Send[3];

	/*Prepare first settings block*/
	Send[0] = 0x9E;	//CODEC Address
	Send[1] = Adress; //MAP
	Send[2] = Data;
	/*First block ready*/

	/*Write first block*/
	Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit(&hspi5, Send, 3, 0xFF);
	CS_H;
	/*First block written*/
}

void CODEC_Init_TDM(SPI_HandleTypeDef hspi5)
{
	uint8_t Send[8];

	/*CODEC Startup*/
	ANA_EN;
	CS_H;
	RST_H;
	/*CODEC Ready*/

	/*Prepare first settings block*/
	Send[0] = 0x9E;	//CODEC Address
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0x98; //Power Control

	Send[3] = 0xF4; //Functional Mode
	Send[4] = 0x36; //Interface Formats
	Send[5] = 0x08; //ADC Control
	Send[6] = 0x21;	//Transition Control
	Send[7] = 0xF8;	//DAC Channel Mute
	/*First block ready*/

	/*Write first block*/
	Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit(&hspi5, Send, 8, 0xFF);
	CS_H;
	/*First block written*/





	/*Prepare volume block*/
	/*
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0x98; //Power Control
	Send[3] = 0xA8; //Functional Mode
	Send[4] = 0x36; //Interface Formats
	Send[5] = 0x08; //ADC Control
	Send[6] = 0x21;	//Transition Control
	Send[7] = 0xF8;	//DAC Channel Mute
	*/
	/*Volume block ready*/

	/*Write volume block*/
	/*
	Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit_IT(&hspi5, Send, 8);
	CS_H;
	*/
	/*Second block written*/
}

void CODEC_Init_OLM2_M(SPI_HandleTypeDef hspi5)
{
	uint8_t Send[8];

	/*CODEC Startup*/
	ANA_EN;
	CS_H;
	RST_H;
	/*CODEC Ready*/

	/*Prepare first settings block*/
	Send[0] = 0x9E;	//CODEC Address
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0x98; //Power Control
	Send[3] = 0x54; //Functional Mode
	Send[4] = 0x2D; //Interface Formats
	Send[5] = 0x08; //ADC Control
	Send[6] = 0x21;	//Transition Control
	Send[7] = 0xF8;	//DAC Channel Mute
	/*First block ready*/

	/*Write first block*/
	/*Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit(&hspi5, Send, 8, 0xFF);
	CS_H;*/
	/*First block written*/
	for (uint8_t x = 0; x < 6; x++)
	CODEC_Write(hspi5, 0x02+x, Send[2+x]);





	/*Prepare volume block*/
	/*
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0x98; //Power Control
	Send[3] = 0xA8; //Functional Mode
	Send[4] = 0x36; //Interface Formats
	Send[5] = 0x08; //ADC Control
	Send[6] = 0x21;	//Transition Control
	Send[7] = 0xF8;	//DAC Channel Mute
	*/
	/*Volume block ready*/

	/*Write volume block*/
	/*
	Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit_IT(&hspi5, Send, 8);
	CS_H;
	*/
	/*Second block written*/
}

void CODEC_Init_OLM2_S(SPI_HandleTypeDef hspi5)
{
	uint8_t Send[8];

	/*CODEC Startup*/
	ANA_EN;
	CS_H;
	RST_H;
	/*CODEC Ready*/

	/*Prepare first settings block*/
	Send[0] = 0x9E;	//CODEC Address
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0x98; //Power Control
	Send[3] = 0xF4; //Functional Mode
	Send[4] = 0x2D; //Interface Formats
	Send[5] = 0x08; //ADC Control
	Send[6] = 0x21;	//Transition Control
	Send[7] = 0xF8;	//DAC Channel Mute
	/*First block ready*/

	/*Write first block*/
	/*Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit(&hspi5, Send, 8, 0xFF);
	CS_H;*/
	/*First block written*/
	for (uint8_t x = 0; x < 6; x++)
	CODEC_Write(hspi5, 0x02+x, Send[2+x]);





	/*Prepare volume block*/
	/*
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0x98; //Power Control
	Send[3] = 0xA8; //Functional Mode
	Send[4] = 0x36; //Interface Formats
	Send[5] = 0x08; //ADC Control
	Send[6] = 0x21;	//Transition Control
	Send[7] = 0xF8;	//DAC Channel Mute
	*/
	/*Volume block ready*/

	/*Write volume block*/
	/*
	Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit_IT(&hspi5, Send, 8);
	CS_H;
	*/
	/*Second block written*/
}


void CODEC_Deinit(SPI_HandleTypeDef hspi5)
{
	uint8_t Send[8];

	/*Prepare first settings block*/
	Send[0] = 0x9E;	//CODEC Address
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0xFF; //Power Control
	/*First block ready*/

	/*Write first block*/
	Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit(&hspi5, Send, 3, 0xFF);
	CS_H;
	//RST_L;
	//ANA_DIS;
	/*First block written*/
}

void CODEC_Init(SPI_HandleTypeDef hspi5)
{
	uint8_t Send[8];

	/*Prepare first settings block*/
	Send[0] = 0x9E;	//CODEC Address
	Send[1] = 0x82; //MAP with Increment
	Send[2] = 0x00; //Power Control
	/*First block ready*/

	/*Write first block*/
	Nope1us;
	CS_L;
	Nope250ns;
	HAL_SPI_Transmit(&hspi5, Send, 3, 0xFF);
	CS_H;
	/*First block written*/
}



