#include "CODEC.h"

#define NOPE250ns() for (uint8_t x = 0; x < 22; x++) asm("nop");
#define NOPE1us() for (uint8_t x = 0; x < 98; x++) asm("nop");

#define NRST_L() CODEC_NRST_GPIO_Port->BSRR = CODEC_NRST_Pin << 16;
#define NRST_H() CODEC_NRST_GPIO_Port->BSRR = CODEC_NRST_Pin;


#define NCS_L() SPI5_NSS_GPIO_Port->BSRR = SPI5_NSS_Pin << 16;
#define NCS_H() SPI5_NSS_GPIO_Port->BSRR = SPI5_NSS_Pin;

#define ANA_DIS() ANA_EN_GPIO_Port->BSRR = ANA_EN_Pin << 16;
#define ANA_EN() ANA_EN_GPIO_Port->BSRR = ANA_EN_Pin;


void CODEC_Write(SPI_HandleTypeDef * hspi, uint8_t Adress, uint8_t Data)
{
	uint8_t Send[3];

	/*Prepare first settings block*/
	Send[0] = 0x9E;	//CODEC Address
	Send[1] = Adress; //MAP
	Send[2] = Data;
	/*First block ready*/

	/*Write first block*/
	NOPE1us();
	NCS_L();
	NOPE250ns();
	HAL_SPI_Transmit(hspi, Send, 3, 0xFF);
	NCS_H();
	/*First block written*/
}

void CODEC_Init_TDM(SPI_HandleTypeDef * hspi)
{
	uint8_t Send[8];

	/*CODEC Startup*/

	ANA_DIS();
	HAL_Delay(20);
	NRST_L();

	NCS_H();
	ANA_EN();

	HAL_Delay(20);

	NRST_H();
	HAL_Delay(2);


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
	NOPE1us();
	NCS_L();
	NOPE250ns();
	HAL_SPI_Transmit(hspi, Send, 8, 0xFF);
	NCS_H();
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

