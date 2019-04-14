PROGRAM_NAME='_iVIDEO' 

//Falta capturar los IRs cone l Iris, el mando parecía no tener pilas

DEFINE_CONSTANT

BTN_VD_1				=	251
BTN_VD_2				=	252
BTN_VD_3				=	253
BTN_VD_4				=	254
BTN_VD_5				=	255
BTN_VD_6				=	256
BTN_VD_7				=	257
BTN_VD_8				=	258
BTN_VD_9				=	259
BTN_VD_PROG_DOWN	=	260
BTN_VD_0				=	261
BTN_VD_PROG_UP		=	262

BTN_VD_VOL_UP		=	263
BTN_VD_MUTE			=	264
BTN_VD_VOL_DOWN	=	265

BTN_VD_STOP			= 	266
BTN_VD_PLAY			=	267
BTN_VD_PAUSE		=	268
BTN_VD_REW			=	269
BTN_VD_FWD			=	270

BTN_VD_8MM			=	271
BTN_VD_VHS			=	272
BTN_VD_EJECT		=	273
BTN_VD_POWER		=	274


IR_VD_VIDEO_8		= 1
IR_VD_VHS			= 2
IR_VD_1				= 3
IR_VD_2				= 4
IR_VD_3				= 5
IR_VD_4				= 6
IR_VD_5				= 7
IR_VD_6				= 8
IR_VD_7				= 9
IR_VD_8				= 10
IR_VD_9				= 11
IR_VD_0				= 12
IR_VD_RAYA_RAYA	= 13
IR_VD_PLAY			= 14
IR_VD_STOP			= 15
IR_VD_PAUSE			= 16
IR_VD_FWD			= 17
IR_VD_REW			= 18
IR_VD_REC			= 19
IR_VD_CH_UP			= 20
IR_VD_CH_DOWN		= 21
IR_VD_POWER			= 22

IR_VD_UP				= 24
IR_VD_DOWN			= 25
IR_VD_LEFT			= 26
IR_VD_RIGHT			= 27
IR_VD_OK				= 28

IR_VD_VIDEO_8_2	= 30
IR_VD_VHS_2			= 31

IR_VD_VOL_UP		= 33
IR_VD_VOL_DOWN		= 34
IR_VD_MENU			= 35
IR_VD_REW_REW		= 36
IR_VD_CH_MAS_10	= 37
IR_VD_EJECT			= 38

DEFINE_VARIABLE

integer aBtnVideo[]  = 		
{
	 BTN_VD_1,
	 BTN_VD_2,
	 BTN_VD_3,
	 BTN_VD_4,
	 BTN_VD_5,
	 BTN_VD_6,
	 BTN_VD_7,
	 BTN_VD_8,
	 BTN_VD_9,
	 BTN_VD_PROG_DOWN,
	 BTN_VD_0,
	 BTN_VD_PROG_UP,

	 BTN_VD_STOP,
	 BTN_VD_PLAY,
	 BTN_VD_PAUSE,
	 BTN_VD_REW,
	 BTN_VD_FWD,
	 
	 BTN_VD_8MM,
	 BTN_VD_VHS,
	 BTN_VD_EJECT,
	 BTN_VD_POWER
}

integer aIrVideo[]  =	 	
{
	 IR_VD_1,
	 IR_VD_2,
	 IR_VD_3,
	 IR_VD_4,
	 IR_VD_5,
	 IR_VD_6,
	 IR_VD_7,
	 IR_VD_8,
	 IR_VD_9,
	 IR_VD_CH_DOWN,
	 IR_VD_0,
	 IR_VD_CH_UP,

	 IR_VD_STOP,
	 IR_VD_PLAY,
	 IR_VD_PAUSE,
	 IR_VD_REW,
	 IR_VD_FWD,

	 IR_VD_VIDEO_8_2,
	 IR_VD_VHS_2,
	 
	 IR_VD_EJECT,

	 IR_VD_POWER
}

DEFINE_EVENT

button_event[ dvTp, aBtnVideo ]{ push:{ Pulse[ dvVideo, aIrVideo[ Get_Last( aBtnVideo ) ] ] } }


