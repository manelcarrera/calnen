PROGRAM_NAME='_rBR_OPPO_BDP95EU'

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

BTN_BR_VOL_DOWN			=	211
BTN_BR_MUTE				=	212
BTN_BR_VOL_UP			=	213

BTN_BR_AUDIO			=	214
BTN_BR_OPEN				=	215
BTN_BR_SUBTITLE			=	216
BTN_BR_RETURN			=	217
BTN_BR_MENU				=	218

BTN_BR_STOP				=	220
BTN_BR_PLAY				=	221
BTN_BR_PAUSE			=	222
BTN_BR_REW				=	223
BTN_BR_FWD				=	224
BTN_BR_PREVIOUS			=	225
BTN_BR_NEXT				=	226

BTN_BR_ON				=	230
BTN_BR_OFF				=	231
BTN_BR_HOME				=	233
BTN_BR_TOP_MENU			=	234
BTN_BR_POPUP_MENU		=	235
BTN_BR_PURE_AUDIO		=	236
BTN_BR_DISPLAY			=	238
BTN_BR_DIMMER			=	239
BTN_BR_GOTO				=	242
BTN_BR_RED				=	247
BTN_BR_GREEN			=	248
BTN_BR_YELLOW			=	249
BTN_BR_BLUE				=	1901
BTN_BR_PAGE_UP			=	1902
BTN_BR_PAGE_DOWN		=	1903
BTN_BR_IPAD				=	1904
BTN_BR_DVD				=	1905

//----------------------------------

CMD_BR_1				=	1
CMD_BR_2				=	2
CMD_BR_3				=	3
CMD_BR_4				=	4
CMD_BR_5				=	5
CMD_BR_6				=	6
CMD_BR_7				=	7
CMD_BR_8				=	8
CMD_BR_9				=	9
CMD_BR_0				=	10

CMD_BR_VOL_DOWN			=	11
CMD_BR_MUTE				=	12
CMD_BR_VOL_UP			=	13

CMD_BR_AUDIO			=	14
CMD_BR_OPEN				=	15
CMD_BR_SUBTITLE			=	16
CMD_BR_RETURN			=	17
CMD_BR_MENU				=	18

CMD_BR_STOP				=	19
CMD_BR_PLAY				=	20
CMD_BR_PAUSE			=	21
CMD_BR_REW				=	22
CMD_BR_FWD				=	23
CMD_BR_PREVIOUS			=	24
CMD_BR_NEXT				=	25

CMD_BR_ON				=	26
CMD_BR_OFF				=	27
CMD_BR_HOME				=	28
CMD_BR_TOP_MENU			=	29
CMD_BR_POPUP_MENU		=	30
CMD_BR_PURE_AUDIO		=	31
CMD_BR_DISPLAY			=	32
CMD_BR_DIMMER			=	33
CMD_BR_GOTO				=	34
CMD_BR_RED				=	35
CMD_BR_GREEN			=	36
CMD_BR_YELLOW			=	37
CMD_BR_BLUE				=	38
CMD_BR_PAGE_UP			=	39
CMD_BR_PAGE_DOWN		=	40
CMD_BR_IPAD				=	41
CMD_BR_DVD				=	42

CMD_BR_UP				=	43
CMD_BR_DOWN				=	44
CMD_BR_LEFT				=	45
CMD_BR_RIGHT			=	46
CMD_BR_ENTER			=	47


LEN_CMD_BR				= 5


DEFINE_VARIABLE

sCmdBR[ 50 ][ LEN_CMD_BR ]

integer aBtnBR[] =
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
	 BTN_BR_NEXT,

	 BTN_BR_ON,
	 BTN_BR_OFF,
	 BTN_BR_HOME,
	 BTN_BR_TOP_MENU,
	 BTN_BR_POPUP_MENU,
	 BTN_BR_PURE_AUDIO,
	 BTN_BR_DISPLAY,
	 BTN_BR_DIMMER,
	 BTN_BR_GOTO,
	 BTN_BR_RED,
	 BTN_BR_GREEN,
	 BTN_BR_YELLOW,
	 BTN_BR_BLUE,

	 BTN_BR_PAGE_UP,
	 BTN_BR_PAGE_DOWN
}

integer aCmdBR[] =
{
	 CMD_BR_1,
	 CMD_BR_2,
	 CMD_BR_3,
	 CMD_BR_4,
	 CMD_BR_5,
	 CMD_BR_6,
	 CMD_BR_7,
	 CMD_BR_8,
	 CMD_BR_9,
	 CMD_BR_0,
	 
	 CMD_BR_AUDIO,
	 CMD_BR_OPEN,
	 CMD_BR_SUBTITLE,
	 CMD_BR_RETURN,
	 CMD_BR_MENU,

	 CMD_BR_STOP,
	 CMD_BR_PLAY,
	 CMD_BR_PAUSE,
	 CMD_BR_REW,
	 CMD_BR_FWD,
	 CMD_BR_PREVIOUS,
	 CMD_BR_NEXT,

	 CMD_BR_ON,
	 CMD_BR_OFF,
	 CMD_BR_HOME,
	 CMD_BR_TOP_MENU,
	 CMD_BR_POPUP_MENU,
	 CMD_BR_PURE_AUDIO,
	 CMD_BR_DISPLAY,
	 CMD_BR_DIMMER,
	 CMD_BR_GOTO,
	 CMD_BR_RED,
	 CMD_BR_GREEN,
	 CMD_BR_YELLOW,
	 CMD_BR_BLUE,

	 CMD_BR_PAGE_UP,
	 CMD_BR_PAGE_DOWN
}

tCola cBR
ssCmdBR[ 100 ][ 50 ]

define_function MainLineBR()
{
   local_var tCmd cmd

	 switch( cBR.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cBR, cmd ) )
				{
					  send_string 0, "ssCmdBR[ cmd.cmd ]"
					  send_string dvBluRay, sCmdBR[ cmd.cmd ]
					  cBR.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cBR.last.tExe )
				{
					  cBR.estado = WAITING_EXECUTION
					  wait cBR.last.tExe
						  cBR.estado = FREE
				}
				else{ cBR.estado = FREE }
		  }
	 }
}



DEFINE_START

sCmdBR[ CMD_BR_1 ] 			= "'#','NU1',$0d"
sCmdBR[ CMD_BR_2 ] 			= "'#','NU2',$0d"
sCmdBR[ CMD_BR_3 ] 			= "'#','NU3',$0d"
sCmdBR[ CMD_BR_4 ] 			= "'#','NU4',$0d"
sCmdBR[ CMD_BR_5 ] 			= "'#','NU5',$0d"
sCmdBR[ CMD_BR_6 ] 			= "'#','NU6',$0d"
sCmdBR[ CMD_BR_7 ] 			= "'#','NU7',$0d"
sCmdBR[ CMD_BR_8 ] 			= "'#','NU8',$0d"
sCmdBR[ CMD_BR_9 ] 			= "'#','NU9',$0d"
sCmdBR[ CMD_BR_0 ] 			= "'#','NU0',$0d"

sCmdBR[ CMD_BR_AUDIO ] 		= "'#','AUD',$0d"
sCmdBR[ CMD_BR_OPEN ] 		= "'#','EJT',$0d"
sCmdBR[ CMD_BR_SUBTITLE ] 	= "'#','SUB',$0d"
sCmdBR[ CMD_BR_RETURN ] 	= "'#','RET',$0d"
sCmdBR[ CMD_BR_MENU ] 		= "'#','HOM',$0d"

sCmdBR[ CMD_BR_STOP ] 		= "'#','STP',$0d"
sCmdBR[ CMD_BR_PLAY ] 		= "'#','PLA',$0d"
sCmdBR[ CMD_BR_PAUSE ] 		= "'#','PAU',$0d"
sCmdBR[ CMD_BR_REW ] 		= "'#','REV',$0d"
sCmdBR[ CMD_BR_FWD ] 		= "'#','FWD',$0d"
sCmdBR[ CMD_BR_PREVIOUS ] 	= "'#','PRE',$0d"
sCmdBR[ CMD_BR_NEXT ] 		= "'#','NXT',$0d"

sCmdBR[ CMD_BR_ON ] 		= "'#','PON',$0d"
sCmdBR[ CMD_BR_OFF ] 		= "'#','POF',$0d"
sCmdBR[ CMD_BR_HOME ] 		= "'#','HOM',$0d"
sCmdBR[ CMD_BR_TOP_MENU ] 	= "'#','TTL',$0d"
sCmdBR[ CMD_BR_POPUP_MENU ] = "'#','MNU',$0d"
sCmdBR[ CMD_BR_PURE_AUDIO ] = "'#','PUR',$0d"
sCmdBR[ CMD_BR_DISPLAY ] 	= "'#','OSD',$0d"
sCmdBR[ CMD_BR_DIMMER ] 	= "'#','DIM',$0d"
sCmdBR[ CMD_BR_GOTO ] 		= "'#','GOT',$0d"
sCmdBR[ CMD_BR_RED ] 		= "'#','RED',$0d"
sCmdBR[ CMD_BR_GREEN ] 		= "'#','GRN',$0d"
sCmdBR[ CMD_BR_YELLOW ] 	= "'#','YLW',$0d"
sCmdBR[ CMD_BR_BLUE ] 		= "'#','BLU',$0d"

sCmdBR[ CMD_BR_PAGE_UP ] 	= "'#','PUP',$0d"
sCmdBR[ CMD_BR_PAGE_DOWN ] 	= "'#','PDN',$0d"

sCmdBR[ CMD_BR_UP ] 	= "'#','NUP',$0d"
sCmdBR[ CMD_BR_DOWN ] 	= "'#','NDN',$0d"
sCmdBR[ CMD_BR_LEFT ] 	= "'#','NLT',$0d"
sCmdBR[ CMD_BR_RIGHT ] 	= "'#','NRT',$0d"
sCmdBR[ CMD_BR_ENTER ] 	= "'#','SEL',$0d"

//----------------------

ssCmdBR[ CMD_BR_1 ] 		= "'CMD_BR_1'"
ssCmdBR[ CMD_BR_2 ] 		= "'CMD_BR_2'"
ssCmdBR[ CMD_BR_3 ] 		= "'CMD_BR_3'"
ssCmdBR[ CMD_BR_4 ] 		= "'CMD_BR_4'"
ssCmdBR[ CMD_BR_5 ] 		= "'CMD_BR_5'"
ssCmdBR[ CMD_BR_6 ] 		= "'CMD_BR_6'"
ssCmdBR[ CMD_BR_7 ] 		= "'CMD_BR_7'"
ssCmdBR[ CMD_BR_8 ] 		= "'CMD_BR_8'"
ssCmdBR[ CMD_BR_9 ] 		= "'CMD_BR_9'"
ssCmdBR[ CMD_BR_0 ] 		= "'CMD_BR_0'"

ssCmdBR[ CMD_BR_AUDIO ] 	= "'CMD_BR_AUDIO'"
ssCmdBR[ CMD_BR_OPEN ] 		= "'CMD_BR_OPEN'"
ssCmdBR[ CMD_BR_SUBTITLE ] 	= "'CMD_BR_SUBTITLE'"
ssCmdBR[ CMD_BR_RETURN ] 	= "'CMD_BR_RETURN'"
ssCmdBR[ CMD_BR_MENU ] 		= "'CMD_BR_MENU'"

ssCmdBR[ CMD_BR_STOP ] 		= "'CMD_BR_STOP'"
ssCmdBR[ CMD_BR_PLAY ] 		= "'CMD_BR_PLAY'"
ssCmdBR[ CMD_BR_PAUSE ] 	= "'CMD_BR_PAUSE'"
ssCmdBR[ CMD_BR_REW ] 		= "'CMD_BR_REW'"
ssCmdBR[ CMD_BR_FWD ] 		= "'CMD_BR_FWD'"
ssCmdBR[ CMD_BR_PREVIOUS ] 	= "'CMD_BR_PREVIOUS'"
ssCmdBR[ CMD_BR_NEXT ] 		= "'CMD_BR_NEXT'"

ssCmdBR[ CMD_BR_ON ] 		= "'CMD_BR_POWER_ON'"
ssCmdBR[ CMD_BR_OFF ] 		= "'CMD_BR_OFF'"
ssCmdBR[ CMD_BR_HOME ] 		= "'CMD_BR_HOME'"
ssCmdBR[ CMD_BR_TOP_MENU ] 	= "'CMD_BR_TOP_MENU'"
ssCmdBR[ CMD_BR_POPUP_MENU ] = "'CMD_BR_POPUP_MENU'"
ssCmdBR[ CMD_BR_PURE_AUDIO ] = "'CMD_BR_AUDIO'"
ssCmdBR[ CMD_BR_DISPLAY ] 	= "'CMD_BR_DISPLAY'"
ssCmdBR[ CMD_BR_DIMMER ] 	= "'CMD_BR_DIMMER'"
ssCmdBR[ CMD_BR_GOTO ] 		= "'CMD_BR_GOTO'"
ssCmdBR[ CMD_BR_RED ] 		= "'CMD_BR_RED'"
ssCmdBR[ CMD_BR_GREEN ] 	= "'CMD_BR_GREEN'"
ssCmdBR[ CMD_BR_YELLOW ] 	= "'CMD_BR_YELLOW'"
ssCmdBR[ CMD_BR_BLUE ] 		= "'CMD_BR_BLUE'"

ssCmdBR[ CMD_BR_PAGE_UP ] 	= "'CMD_BR_PAGE_UP'"
ssCmdBR[ CMD_BR_PAGE_DOWN ] = "'CMD_BR_PAGE_DOWN'"

ssCmdBR[ CMD_BR_UP ] 		= "'CMD_BR_UP'"
ssCmdBR[ CMD_BR_DOWN ] 		= "'CMD_BR_DOWN'"
ssCmdBR[ CMD_BR_LEFT ] 		= "'CMD_BR_LEFT'"
ssCmdBR[ CMD_BR_RIGHT ] 	= "'CMD_BR_RIGHT'"
ssCmdBR[ CMD_BR_ENTER ] 	= "'CMD_BR_ENTER'"

clearCola( cBR, 'BR' )


DEFINE_PROGRAM

MainLineBR()


DEFINE_EVENT

button_event[ dvTp, aBtnBR ]
{ 
	 push:
	 { 
		  send_string 0, "'BR:',sCmdBR[ aCmdBR[ Get_Last( aBtnBR ) ] ] "
		  send_string dvBluRay, sCmdBR[ aCmdBR[ Get_Last( aBtnBR ) ] ] 
	 } 
}

