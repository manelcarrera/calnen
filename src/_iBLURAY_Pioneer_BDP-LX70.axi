PROGRAM_NAME='_iBLURAY_Pionner_BDP-LX70'

DEFINE_CONSTANT

BTN_BR_1				=	201
BTN_BR_2				=	202
BTN_BR_3				=	203
BTN_BR_4				=	204
BTN_BR_5				=	205
BTN_BR_6				=	206
BTN_BR_7				=	207
BTN_BR_8				=	208
BTN_BR_9				=	209
BTN_BR_0				=	210

BTN_BR_VOL_DOWN	=	211
BTN_BR_MUTE			=	212
BTN_BR_VOL_UP		=	213

BTN_BR_AUDIO				=	214
BTN_BR_OPEN					=	215
BTN_BR_SUBTITLE			=	216
BTN_BR_RETURN				=	217
BTN_BR_MENU					=	218

BTN_BR_STOP			=	220
BTN_BR_PLAY			=	221
BTN_BR_PAUSE		=	222
BTN_BR_REW			=	223
BTN_BR_FWD			=	224
BTN_BR_PREVIOUS	=	225
BTN_BR_NEXT			=	226


IR_BR_STANDBY_ON					= 1	
IR_BR_FL_DIMMER					= 2	
IR_BR_OPEN_CLOSE					= 3	
IR_BR_HOME_MEDIA_GALLERY		= 4	
IR_BR_OUTPUT_RESOLUTION_UP		= 5	
IR_BR_OUTPUT_RESOLUTION_DOWN	= 6
IR_BR_0								= 7	
IR_BR_1								= 8	
IR_BR_2								= 9	
IR_BR_3								= 10
IR_BR_4								= 11
IR_BR_5								= 12
IR_BR_6								= 13
IR_BR_7								= 14
IR_BR_8								= 15
IR_BR_9								= 16
IR_BR_CLEAR							= 17
IR_BR_ENTER							= 18
IR_BR_AUDIO							= 19
IR_BR_SUBTITLE						= 20
IR_BR_ANGLE							= 21
IR_BR_DISPLAY						= 22
IR_BR_DISC_NAVIGATOR				= 23
IR_BR_POPUPMENU_MENU				= 24
IR_BR_HOME_MENU					= 25
IR_BR_RETURN						= 26
IR_BR_UP								= 27
IR_BR_DOWN							= 28
IR_BR_LEFT							= 29
IR_BR_RIGHT							= 30
IR_BR_RED							= 31
IR_BR_GREEN							= 32
IR_BR_YELLOW						= 33
IR_BR_BLUE							= 34
IR_BR_REV							= 35
IR_BR_PLAY							= 36
IR_BR_FORWARD						= 37
IR_BR_ANTERIOR						= 38
IR_BR_PAUSE							= 39
IR_BR_STOP							= 40
IR_BR_SIGUIENTE					= 41
IR_BR_IZDA							= 42
IR_BR_DCHA							= 43
IR_BR_PHOTO_ZOOM					= 44
IR_BR_VIDEO_ADJUST				= 45
IR_BR_PLAY_MODE					= 46


DEFINE_VARIABLE

integer aBtnBluRay[]  = 		
{
	 BTN_BR_1,
	 BTN_BR_2,
	 BTN_BR_3,
	 BTN_BR_4,
	 BTN_BR_5,
	 BTN_BR_6,
	 BTN_BR_7,
	 BTN_BR_8,
	 BTN_BR_9,
	 BTN_BR_0,
	 
	 BTN_BR_AUDIO,
	 BTN_BR_OPEN,
	 BTN_BR_SUBTITLE,
	 BTN_BR_RETURN,
	 BTN_BR_MENU,

	 BTN_BR_STOP,
	 BTN_BR_PLAY,
	 BTN_BR_PAUSE,
	 BTN_BR_REW,
	 BTN_BR_FWD,
	 BTN_BR_PREVIOUS,
	 BTN_BR_NEXT
}

integer aIrBluRay[]  =	 	
{
	 IR_BR_1, //BTN_BR_1,
	 IR_BR_2, //BTN_BR_2,
	 IR_BR_3, //BTN_BR_3,
	 IR_BR_4, //BTN_BR_4,
	 IR_BR_5, //BTN_BR_5,
	 IR_BR_6, //BTN_BR_6,
	 IR_BR_7, //BTN_BR_7,
	 IR_BR_8, //BTN_BR_8,
	 IR_BR_9, //BTN_BR_9,
	 IR_BR_0, //BTN_BR_0,
	 
	 IR_BR_AUDIO,
	 IR_BR_OPEN_CLOSE,
	 IR_BR_SUBTITLE,
	 IR_BR_RETURN,
	 IR_BR_POPUPMENU_MENU,
	 
	 IR_BR_STOP, //BTN_BR_STOP,
	 IR_BR_PLAY, //BTN_BR_PLAY,
	 IR_BR_PAUSE, //BTN_BR_PAUSE,
	 IR_BR_REV, //BTN_BR_REW,
	 IR_BR_FORWARD, //BTN_BR_FWD,
	 IR_BR_ANTERIOR, //BTN_BR_PREVIOUS,
	 IR_BR_SIGUIENTE //BTN_BR_NEXT
}

DEFINE_EVENT

button_event[ dvTp, aBtnBluRay ]{ push:{ Pulse[ dvBluRay, aIrBluRay[ Get_Last( aBtnBluRay ) ] ] } }

