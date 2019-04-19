PROGRAM_NAME='_rDVD_Meridian_800'

DEFINE_CONSTANT


BTN_DVD_1				= 151
BTN_DVD_2				= 152
BTN_DVD_3				= 153
BTN_DVD_4				= 154
BTN_DVD_5				= 155
BTN_DVD_6				= 156
BTN_DVD_7				= 157
BTN_DVD_8				= 158
BTN_DVD_9				= 159
BTN_DVD_0				= 160

BTN_DVD_VOL_DOWN		= 161
BTN_DVD_MUTE			= 162
BTN_DVD_VOL_UP			= 163

BTN_DVD_AUDIO			= 164
BTN_DVD_OPEN			= 165
BTN_DVD_SUBTITLE		= 166
BTN_DVD_DSP				= 167
BTN_DVD_MENU			= 168
//BTN_DVD_CLEAR			= 169
BTN_DVD_SETUP			= 170
//BTN_DVD_DISPLAY		= 171
BTN_DVD_OSD				= 172
BTN_DVD_STOP			= 173
BTN_DVD_PLAY			= 174
BTN_DVD_PAUSE			= 175
BTN_DVD_REW				= 176
BTN_DVD_FWD				= 177
BTN_DVD_LAST			= 178
BTN_DVD_NEXT			= 179
BTN_DVD_RETURN			= 180
BTN_DVD_SUBT_ON_OFF	= 181



CMD_DVD_STANDBY 		= 1
CMD_DVD_PLAY 			= 2
CMD_DVD_STOP 			= 3
CMD_DVD_PAUSE 			= 4
CMD_DVD_NEXT 			= 5
CMD_DVD_PREVIOUS		= 6
CMD_DVD_FAST_FORWARD	= 7
CMD_DVD_FAST_BACK		= 8
CMD_DVD_N0				= 9
CMD_DVD_N1				= 10
CMD_DVD_N2				= 11
CMD_DVD_N3				= 12
CMD_DVD_N4				= 13
CMD_DVD_N5				= 14
CMD_DVD_N6				= 15
CMD_DVD_N7				= 16
CMD_DVD_N8				= 17
CMD_DVD_N9				= 18

CMD_DVD_UP				= 19
CMD_DVD_DOWN			= 20
CMD_DVD_LEFT			= 21
CMD_DVD_RIGHT			= 22

CMD_DVD_CLEAR			= 23 
CMD_DVD_OPEN			= 24
CMD_DVD_OSD				= 25
CMD_DVD_SETUP			= 26
CMD_DVD_MENU			= 27
CMD_DVD_DISPLAY		= 28
CMD_DVD_AUDIO			= 29
CMD_DVD_SUBTITLE		= 30

CMD_DVD_RETURN			= 31
CMD_DVD_ENTER			= 32

CMD_DVD_SRC_DVD		= 33
CMD_DVD_SRC_CD			= 34
CMD_DVD_SUBT_ON_OFF	= 35

LEN_CMD_DVD				= 5


DEFINE_VARIABLE

sCmdDvd[ 50 ][ LEN_CMD_DVD ]

integer aBtnDvd[] =
{
	 BTN_DVD_1,
	 BTN_DVD_2,
	 BTN_DVD_3,
	 BTN_DVD_4,
	 BTN_DVD_5,
	 BTN_DVD_6,
	 BTN_DVD_7,
	 BTN_DVD_8,
	 BTN_DVD_9,
	 BTN_DVD_0,

	 BTN_DVD_AUDIO,
	 BTN_DVD_OPEN,
	 BTN_DVD_SUBTITLE,
	 //BTN_DVD_DSP,
	 BTN_DVD_MENU,
	 //BTN_DVD_CLEAR,
	 BTN_DVD_SETUP,
	 //BTN_DVD_DISPLAY,
	 BTN_DVD_OSD,
	 BTN_DVD_RETURN,

	 BTN_DVD_STOP,
	 BTN_DVD_PLAY,
	 BTN_DVD_PAUSE,
	 BTN_DVD_REW,
	 BTN_DVD_FWD,
	 BTN_DVD_LAST,
	 BTN_DVD_NEXT,
	 BTN_DVD_SUBT_ON_OFF
}

integer aCmdDvd[] =
{
	 CMD_DVD_N1,
	 CMD_DVD_N2,
	 CMD_DVD_N3,
	 CMD_DVD_N4,
	 CMD_DVD_N5,
	 CMD_DVD_N6,
	 CMD_DVD_N7,
	 CMD_DVD_N8,
	 CMD_DVD_N9,
	 CMD_DVD_N0,

	 CMD_DVD_AUDIO,
	 CMD_DVD_OPEN,
	 CMD_DVD_SUBTITLE,
	 //CMD_DVD_DSP,
	 CMD_DVD_MENU,
	 //CMD_DVD_CLEAR,
	 CMD_DVD_SETUP,
	 //CMD_DVD_DISPLAY,
	 CMD_DVD_OSD,
	 CMD_DVD_RETURN,

	 CMD_DVD_STOP,
	 CMD_DVD_PLAY,
	 CMD_DVD_PAUSE,
	 CMD_DVD_FAST_BACK,
	 CMD_DVD_FAST_FORWARD,
	 CMD_DVD_PREVIOUS,
	 CMD_DVD_NEXT,
	 CMD_DVD_SUBT_ON_OFF
}

tCola cDVD
ssCmdDvd[ 100 ][ 50 ]

define_function MainLineDVD()
{
   local_var tCmd cmd

	 switch( cDVD.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cDVD, cmd ) )
				{
					  send_string 0, "ssCmdDvd[ cmd.cmd ]"
					  send_string dvDVD, sCmdDvd[ cmd.cmd ]
					  cDVD.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cDVD.last.tExe )
				{
					  cDVD.estado = WAITING_EXECUTION
					  wait cDVD.last.tExe
						  cDVD.estado = FREE
				}
				else{ cDVD.estado = FREE }
		  }
	 }
}



DEFINE_START

sCmdDvd[ CMD_DVD_STANDBY ] 		= "'SB',$0d"
sCmdDvd[ CMD_DVD_PLAY ] 			= "'PL',$0d"
sCmdDvd[ CMD_DVD_STOP ] 			= "'ST',$0d"
sCmdDvd[ CMD_DVD_PAUSE ] 			= "'PS',$0d"
sCmdDvd[ CMD_DVD_NEXT ] 			= "'NE',$0d"
sCmdDvd[ CMD_DVD_PREVIOUS ] 		= "'PR',$0d"
sCmdDvd[ CMD_DVD_FAST_FORWARD ] 	= "'FF',$0d"
sCmdDvd[ CMD_DVD_FAST_BACK ] 		= "'FB',$0d"

sCmdDvd[ CMD_DVD_N0 ] 				= "'N0',$0d"
sCmdDvd[ CMD_DVD_N1 ] 				= "'N1',$0d"
sCmdDvd[ CMD_DVD_N2 ] 				= "'N2',$0d"
sCmdDvd[ CMD_DVD_N3 ] 				= "'N3',$0d"
sCmdDvd[ CMD_DVD_N4 ] 				= "'N4',$0d"
sCmdDvd[ CMD_DVD_N5 ] 				= "'N5',$0d"
sCmdDvd[ CMD_DVD_N6 ] 				= "'N6',$0d"
sCmdDvd[ CMD_DVD_N7 ] 				= "'N7',$0d"
sCmdDvd[ CMD_DVD_N8 ] 				= "'N8',$0d"
sCmdDvd[ CMD_DVD_N9 ] 				= "'N9',$0d"

sCmdDvd[ CMD_DVD_UP ] 				= "'MP',$0d"
sCmdDvd[ CMD_DVD_DOWN ] 			= "'MM',$0d"
sCmdDvd[ CMD_DVD_LEFT ] 			= "'ML',$0d"
sCmdDvd[ CMD_DVD_RIGHT ]			= "'MR',$0d"

sCmdDvd[ CMD_DVD_CLEAR ]			= "'CL',$0d"
sCmdDvd[ CMD_DVD_OPEN ]				= "'OP',$0d"
sCmdDvd[ CMD_DVD_OSD ]				= "'OS',$0d"
sCmdDvd[ CMD_DVD_SETUP ]			= "'SE',$0d"
sCmdDvd[ CMD_DVD_MENU ]				= "'ME',$0d"
sCmdDvd[ CMD_DVD_DISPLAY ]			= "'DI',$0d"
sCmdDvd[ CMD_DVD_AUDIO ]			= "'AU',$0d"
sCmdDvd[ CMD_DVD_SUBTITLE ]		= "'su',$0d" //Atención, choice, no ON/OFF
sCmdDvd[ CMD_DVD_RETURN ]			= "'RT',$0d"
sCmdDvd[ CMD_DVD_ENTER ]			= "'EN',$0d"

sCmdDvd[ CMD_DVD_SRC_DVD ]			= "'DV',$0d"
sCmdDvd[ CMD_DVD_SRC_CD ]			= "'CD',$0d"

sCmdDvd[ CMD_DVD_SUBT_ON_OFF ]	= "'SU',$0d" //Atención ON/OFF

//----------------------

ssCmdDvd[ CMD_DVD_STANDBY ] 		= "'CMD_DVD_STANDBY'"
ssCmdDvd[ CMD_DVD_PLAY ] 			= "'CMD_DVD_PLAY'"
ssCmdDvd[ CMD_DVD_STOP ] 			= "'CMD_DVD_STOP'"
ssCmdDvd[ CMD_DVD_PAUSE ] 			= "'CMD_DVD_PAUSE'"
ssCmdDvd[ CMD_DVD_NEXT ] 			= "'CMD_DVD_NEXT'"
ssCmdDvd[ CMD_DVD_PREVIOUS ] 		= "'CMD_DVD_PREVIOUS'"
ssCmdDvd[ CMD_DVD_FAST_FORWARD ] = "'CMD_DVD_FAST_FORWARD'"
ssCmdDvd[ CMD_DVD_FAST_BACK ] 	= "'CMD_DVD_FAST_BACK'"

ssCmdDvd[ CMD_DVD_N0 ] 				= "'CMD_DVD_N0'"
ssCmdDvd[ CMD_DVD_N1 ] 				= "'CMD_DVD_N1'"
ssCmdDvd[ CMD_DVD_N2 ] 				= "'CMD_DVD_N2'"
ssCmdDvd[ CMD_DVD_N3 ] 				= "'CMD_DVD_N3'"
ssCmdDvd[ CMD_DVD_N4 ] 				= "'CMD_DVD_N4'"
ssCmdDvd[ CMD_DVD_N5 ] 				= "'CMD_DVD_N5'"
ssCmdDvd[ CMD_DVD_N6 ] 				= "'CMD_DVD_N6'"
ssCmdDvd[ CMD_DVD_N7 ] 				= "'CMD_DVD_N7'"
ssCmdDvd[ CMD_DVD_N8 ] 				= "'CMD_DVD_N8'"
ssCmdDvd[ CMD_DVD_N9 ] 				= "'CMD_DVD_N9'"

ssCmdDvd[ CMD_DVD_UP ] 				= "'CMD_DVD_UP'"
ssCmdDvd[ CMD_DVD_DOWN ] 			= "'CMD_DVD_DOWN'"
ssCmdDvd[ CMD_DVD_LEFT ] 			= "'CMD_DVD_LEFT'"
ssCmdDvd[ CMD_DVD_RIGHT ]			= "'CMD_DVD_RIGHT'"

ssCmdDvd[ CMD_DVD_CLEAR ]			= "'CMD_DVD_CLEAR'"
ssCmdDvd[ CMD_DVD_OPEN ]			= "'CMD_DVD_OPEN'"
ssCmdDvd[ CMD_DVD_OSD ]				= "'CMD_DVD_OSD'"
ssCmdDvd[ CMD_DVD_SETUP ]			= "'CMD_DVD_SETUP'"
ssCmdDvd[ CMD_DVD_MENU ]			= "'CMD_DVD_MENU'"
ssCmdDvd[ CMD_DVD_DISPLAY ]		= "'CMD_DVD_DISPLAY'"
ssCmdDvd[ CMD_DVD_AUDIO ]			= "'CMD_DVD_AUDIO'"
ssCmdDvd[ CMD_DVD_SUBTITLE ]		= "'CMD_DVD_SUBTITLE'"
ssCmdDvd[ CMD_DVD_RETURN ]			= "'CMD_DVD_RETURN'"
ssCmdDvd[ CMD_DVD_ENTER ]			= "'CMD_DVD_ENTER'"

ssCmdDvd[ CMD_DVD_SRC_DVD ]		= "'CMD_DVD_SRC_DVD'"
ssCmdDvd[ CMD_DVD_SRC_CD ]			= "'CMD_DVD_SRC_CD'"

ssCmdDvd[ CMD_DVD_SUBT_ON_OFF ]	= "'CMD_DVD_SUBT_ON_OFF'"

clearCola( cDVD, 'DVD' )


DEFINE_PROGRAM

MainLineDVD()


DEFINE_EVENT

button_event[ dvTp, aBtnDvd ]
{ 
	 push:
	 { 
		  send_string 0, "'Dvd:',sCmdDvd[ aCmdDvd[ Get_Last( aBtnDvd ) ] ] "
		  send_string dvDvd, sCmdDvd[ aCmdDvd[ Get_Last( aBtnDvd ) ] ] 
	 } 
}

