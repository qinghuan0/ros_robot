#include "motor_drive.h"

DEBUG_SET_LEVEL(DEBUG_LEVEL_ERR);
extern TIM_HandleTypeDef htim8;
extern TIM_HandleTypeDef htim1;

//TIM_CHANNEL_1 ~TIM_CHANNEL_4
//设置PWM的占空比
void Motor_Init()
{	
	Stop_Motor(ALL);
	HAL_TIM_PWM_Start(&htim8,TIM_CHANNEL_1);
	HAL_TIM_PWM_Start(&htim8,TIM_CHANNEL_2);
	HAL_TIM_PWM_Start(&htim8,TIM_CHANNEL_3);//左后电机正
	HAL_TIM_PWM_Start(&htim8,TIM_CHANNEL_4);//右后电机正
	HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_1);//左后电机正
	HAL_TIM_PWM_Start(&htim1,TIM_CHANNEL_4);//右后电机正
}
void Set_PWM_Compare(TIM_HandleTypeDef *htimx,uint32_t channel_num,uint32_t duty)
{
	__HAL_TIM_SET_COMPARE(htimx, channel_num, duty);
}
//开启PWM
void Set_Motor_PWM(TIM_HandleTypeDef *htimx, uint32_t Channelx)
{
	if(HAL_OK != HAL_TIM_PWM_Start(htimx,Channelx))
	{
		printf("Set_Motor_PWM error\r\n");
	}
}

void Start_Motor(MOTOR_NUM motor_num,DIRECT_MOTOR dic)
{
	switch(motor_num)
		{
		case MOTOR_A:
				DEBUG("MOTOR_A DIC = %d\r\n",dic);
				if(dic == FORWART)
				{	
					Set_PWM_Compare(&htim8,TIM_CHANNEL_1,5000);
					HAL_GPIO_WritePin(GPIOC,GPIO_PIN_4,1);//左前电机反转
				}else if(dic == REVERSE)
				{
					Set_PWM_Compare(&htim8,TIM_CHANNEL_1,5000);
					HAL_GPIO_WritePin(GPIOC,GPIO_PIN_4,0);//左前电机正转
				}
				break;
		case MOTOR_B:
				DEBUG("MOTOR_B DIC = %d\r\n",dic);
				if(dic == FORWART)
				{
					Set_PWM_Compare(&htim8,TIM_CHANNEL_2,5000);
					HAL_GPIO_WritePin(GPIOC,GPIO_PIN_12,1);//右前电机反转
				}else if(dic == REVERSE)
				{
					Set_PWM_Compare(&htim8,TIM_CHANNEL_2,5000);
					HAL_GPIO_WritePin(GPIOC,GPIO_PIN_12,0);//右前电机正转
				}
				break;
		case MOTOR_C:
				DEBUG("MOTOR_C DIC = %d\r\n",dic);
				if(dic == FORWART)
				{
					Set_PWM_Compare(&htim8,TIM_CHANNEL_4,0);//右后电机反转
					Set_PWM_Compare(&htim1,TIM_CHANNEL_4,5000);
				}else if(dic == REVERSE)
				{
					Set_PWM_Compare(&htim8,TIM_CHANNEL_4,5000);
					Set_PWM_Compare(&htim1,TIM_CHANNEL_4,0);//右后电机正转
				}
				break;
		case MOTOR_D:
				DEBUG("MOTOR_D DIC = %d\r\n",dic);
				if(dic == FORWART)
				{
          			Set_PWM_Compare(&htim1,TIM_CHANNEL_1,5000);
					Set_PWM_Compare(&htim8,TIM_CHANNEL_3,0);//左后电机反转					
				}else if(dic == REVERSE)
				{
         		    Set_PWM_Compare(&htim8,TIM_CHANNEL_3,5000);
					Set_PWM_Compare(&htim1,TIM_CHANNEL_1,0);//左后电机正转			
				}
				break;
		default:
			ERR("Start_Motor:Not match Motor\r\n");
	}
}


//电机停止
void Stop_Motor(MOTOR_NUM motor_num)
{
		switch(motor_num)
		{
		case MOTOR_A:
			Set_PWM_Compare(&htim8,TIM_CHANNEL_1,0); 
			break;
		case MOTOR_B:
			Set_PWM_Compare(&htim8,TIM_CHANNEL_2,0); 
			break;
		case MOTOR_C:
			Set_PWM_Compare(&htim8,TIM_CHANNEL_4,0);
			Set_PWM_Compare(&htim1,TIM_CHANNEL_4,0);
			break;
		case MOTOR_D:
			Set_PWM_Compare(&htim8,TIM_CHANNEL_3,0);
			Set_PWM_Compare(&htim1,TIM_CHANNEL_1,0);
			break;
		case ALL:
			Set_PWM_Compare(&htim8,TIM_CHANNEL_1,0); 
			Set_PWM_Compare(&htim8,TIM_CHANNEL_2,0); 
			Set_PWM_Compare(&htim8,TIM_CHANNEL_4,0);
			Set_PWM_Compare(&htim1,TIM_CHANNEL_4,0);
			Set_PWM_Compare(&htim8,TIM_CHANNEL_3,0);
			Set_PWM_Compare(&htim1,TIM_CHANNEL_1,0);
			break;
		default:
			ERR("Stop_Motor:Not match Motor"); 
		}
}

/*
void MOTOR_A_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_B_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_C_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
void MOTOR_D_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty);
*/

void MOTOR_A_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty)
{
	if(status == RUN)
	{
		if(dic == FORWART)
			Start_Motor(MOTOR_A,FORWART);
		else if(dic == REVERSE)
			Start_Motor(MOTOR_A,REVERSE);
		Set_PWM_Compare(&htim8,TIM_CHANNEL_1,duty);
	}
	else
		if(status == STOP)
			Stop_Motor(MOTOR_A);
}

void MOTOR_B_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty)
{
	if(status == RUN)
	{
		if(dic == FORWART)
			Start_Motor(MOTOR_B,FORWART);
		else if(dic == REVERSE)
			Start_Motor(MOTOR_B,REVERSE);
		Set_PWM_Compare(&htim8,TIM_CHANNEL_2,duty);
	}
	else
		if(status == STOP)
			Stop_Motor(MOTOR_B);
}

void MOTOR_C_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty)
{
	if(status == RUN)
	{
		if(dic == FORWART)
		{
			Start_Motor(MOTOR_C,FORWART);
			Set_PWM_Compare(&htim1,TIM_CHANNEL_4,duty);
		}
		else if(dic == REVERSE)
		{
			Start_Motor(MOTOR_C,REVERSE);
			Set_PWM_Compare(&htim8,TIM_CHANNEL_4,duty);
		}	
	}
	else
		if(status == STOP)
			Stop_Motor(MOTOR_C);
}

void MOTOR_D_Control(MOTOR_STATUS status,DIRECT_MOTOR dic,uint32_t duty)
{
	if(status == RUN)
	{
		if(dic == FORWART)
		{
			Start_Motor(MOTOR_D,FORWART);
			Set_PWM_Compare(&htim1,TIM_CHANNEL_1,duty);
		}
		else if(dic == REVERSE)
		{
			Start_Motor(MOTOR_D,REVERSE);
			Set_PWM_Compare(&htim8,TIM_CHANNEL_3,duty);
		}	
	}
	else
		if(status == STOP)
			Stop_Motor(MOTOR_D);
}

void Motor_A_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_A_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_A_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_A_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_A_Control(STOP,REVERSE,pwm_count);
	}
}
void Motor_B_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_B_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_B_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_B_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_B_Control(STOP,REVERSE,pwm_count);
	}
}
void Motor_C_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_C_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_C_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_C_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_C_Control(STOP,REVERSE,pwm_count);
	}
}
void Motor_D_SetSpeed(int16_t count)
{
	int16_t pwm_count = count;
	DEBUG("Motor_D_SetSpeed Targed pwm count =%d\r\n",pwm_count);
	if(count > 0)
	{
		 MOTOR_D_Control(RUN,FORWART,pwm_count);
	}else if(count < 0)
	{
		pwm_count = -pwm_count;
		MOTOR_D_Control(RUN,REVERSE,pwm_count);
	}else
	{
		MOTOR_D_Control(STOP,REVERSE,pwm_count);
	}
}
