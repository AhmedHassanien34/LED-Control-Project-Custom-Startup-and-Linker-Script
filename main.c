/********************************************************************************************/
/********************************************************************************************/
/**************************		Author:  Ahmed Mohamed Mohamed Hassanien        *************/
/**************************		Date:    21 JULY 2023	            			*************/
/**************************		Layer:   MCAL								   	*************/
/**************************		SWC:	 GPIO									*************/
/**************************		Version: 1.00 	             					*************/
/********************************************************************************************/
/********************************************************************************************/

#include <stdio.h>
#include "ErrorType.h"
#include "Utils.h"

#include "RCC_interface.h"
#include "GPIO_interface.h"



GPIO_PinConfig_t User_Led = {
		.Port = PORTA,
		.PinNum = PIN5,
		.Mode = OUTPUT,
		.Speed = FAST,
		.OutputType = PUSH_PULL,
		.PullType = NOPULL
};

int main(void)
{
	RCC_AHB1EnableCLK(RCC_AHB1ENR_GPIOAEN);
	


	GPIO_u8PinInit(&User_Led);

	GPIO_u8SetPinValue(PORTA,PIN5,PIN_HIGH);

	
    /* Loop forever */
	for(;;);
}

