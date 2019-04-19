PROGRAM_NAME='_rESC_Kramer_VP734'

DEFINE_CONSTANT


CMD_KRAMER_POWER_ON		= 1
CMD_KRAMER_FREEZE		= 2
CMD_KRAMER_BLANK		= 3

CMD_KRAMER_AUTOIMAGE 	= 4
CMD_KRAMER_SAVE			= 5
CMD_KRAMER_RECALL		= 6

CMD_KRAMER_UNIV1		= 7
CMD_KRAMER_UNIV2		= 8

CMD_KRAMER_HDMI1		= 9
CMD_KRAMER_HDMI2		= 10
CMD_KRAMER_HDMI3		= 11
CMD_KRAMER_HDMI4		= 12

CMD_KRAMER_RESET		= 13
CMD_KRAMER_DP			= 14
CMD_KRAMER_INFO			= 15

CMD_KRAMER_VOLUP		= 16
CMD_KRAMER_VODOWN		= 17
CMD_KRAMER_MUTE_ON		= 18

CMD_KRAMER_MENU			= 19

CMD_KRAMER_LEFT			= 20
CMD_KRAMER_RIGHT		= 21
CMD_KRAMER_UP			= 22
CMD_KRAMER_DOWN			= 23
CMD_KRAMER_ENTER		= 24

CMD_KRAMER_POWER_OFF	= 25



KRAMER_D_LEN_CMD		= 30 //son 24 per por si acaso

DEFINE_VARIABLE

char sCmdKramer[ 50 ][ KRAMER_D_LEN_CMD ];

tCola cKramer
ssCmdKramer[ 100 ][ 50 ]

define_function MainLine_Kramer()
{
   local_var tCmd cmd

	 switch( cKramer.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cKramer, cmd ) )
				{
					  send_string 0, "ssCmdKramer[ cmd.cmd ]"
					  send_string dvKramer, sCmdKramer[ cmd.cmd ]
					  cKramer.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cKramer.last.tExe )
				{
					  cKramer.estado = WAITING_EXECUTION
					  wait cKramer.last.tExe
						  cKramer.estado = FREE
				}
				else
				{ 
					cKramer.estado = FREE 
				}
		  }
	 }
}


DEFINE_START

	sCmdKramer[ CMD_KRAMER_POWER_ON ]	= "'Y 0 10 1 ',$0d"	// Implemented

	sCmdKramer[ CMD_KRAMER_FREEZE ] 	= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_BLANK ] 		= "'Y 0 10 ',$0d"

	sCmdKramer[ CMD_KRAMER_AUTOIMAGE ] 	= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_SAVE ] 		= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_RECALL ] 	= "'Y 0 10 ',$0d"

	sCmdKramer[ CMD_KRAMER_UNIV1 ] 		= "'Y 0 30 0 ',$0d"	//
	//sCmdKramer[ CMD_KRAMER_UNIV1 ] 		= "'Y',$20,'0',$20,$1e,$20,'0',$20,$0d"	// Try this way using hexa instead of ASCII

	sCmdKramer[ CMD_KRAMER_UNIV2 ] 		= "'Y 0 30 1 ',$0d"	//

	sCmdKramer[ CMD_KRAMER_HDMI1 ] 		= "'Y 0 30 2 ',$0d"	// Blu-ray
	sCmdKramer[ CMD_KRAMER_HDMI2 ] 		= "'Y 0 30 3 ',$0d"	// AppleTV
	sCmdKramer[ CMD_KRAMER_HDMI3 ] 		= "'Y 0 30 4 ',$0d"	// Chomecast
	sCmdKramer[ CMD_KRAMER_HDMI4 ] 		= "'Y 0 30 5 ',$0d"	// iPlus

	sCmdKramer[ CMD_KRAMER_RESET ] 		= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_DP ] 		= "'Y 0 30 6 ',$0d"	//
	sCmdKramer[ CMD_KRAMER_INFO ] 		= "'Y 0 10 ',$0d"

	sCmdKramer[ CMD_KRAMER_VOLUP ] 		= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_VODOWN ] 	= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_MUTE_ON ] 		= "'Y 0 11 1 ',$0d" //

	sCmdKramer[ CMD_KRAMER_MENU ] 		= "'Y 0 0 ',$0d" //

	sCmdKramer[ CMD_KRAMER_LEFT ] 		= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_RIGHT ] 		= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_UP ] 		= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_DOWN ] 		= "'Y 0 10 ',$0d"
	sCmdKramer[ CMD_KRAMER_ENTER ] 		= "'Y 0 10 ',$0d"

	sCmdKramer[ CMD_KRAMER_POWER_OFF ]	= "'Y 0 10 0 ',$0d" //

	 //---------

	ssCmdKramer[ CMD_KRAMER_POWER_ON ] 	= "'CMD_KRAMER_POWER_ON'"
	ssCmdKramer[ CMD_KRAMER_FREEZE ] 	= "'CMD_KRAMER_FREEZE'"
	ssCmdKramer[ CMD_KRAMER_BLANK ] 	= "'CMD_KRAMER_BLANK'"

	ssCmdKramer[ CMD_KRAMER_AUTOIMAGE ] = "'CMD_KRAMER_AUTOIMAGE'"
	ssCmdKramer[ CMD_KRAMER_SAVE ] 		= "'CMD_KRAMER_SAVE'"
	ssCmdKramer[ CMD_KRAMER_RECALL ] 	= "'CMD_KRAMER_RECALL'"

	ssCmdKramer[ CMD_KRAMER_UNIV1 ] 	= "'CMD_KRAMER_UNIV1'"
	ssCmdKramer[ CMD_KRAMER_UNIV2 ] 	= "'CMD_KRAMER_UNIV2'"

	ssCmdKramer[ CMD_KRAMER_HDMI1 ] 	= "'CMD_KRAMER_HDMI1'"
	ssCmdKramer[ CMD_KRAMER_HDMI2 ] 	= "'CMD_KRAMER_HDMI2'"
	ssCmdKramer[ CMD_KRAMER_HDMI3 ] 	= "'CMD_KRAMER_HDMI3'"
	ssCmdKramer[ CMD_KRAMER_HDMI4 ] 	= "'CMD_KRAMER_HDMI4'"

	ssCmdKramer[ CMD_KRAMER_RESET ] 	= "'CMD_KRAMER_RESET'"
	ssCmdKramer[ CMD_KRAMER_DP ] 		= "'CMD_KRAMER_DP'"
	ssCmdKramer[ CMD_KRAMER_INFO ] 		= "'CMD_KRAMER_INFO'"

	ssCmdKramer[ CMD_KRAMER_VOLUP ] 	= "'CMD_KRAMER_VOLUP'"
	ssCmdKramer[ CMD_KRAMER_VODOWN ] 	= "'CMD_KRAMER_VOLUP'"
	ssCmdKramer[ CMD_KRAMER_MUTE_ON ] 	= "'CMD_KRAMER_MUTE_ON'"

	ssCmdKramer[ CMD_KRAMER_MENU ] 		= "'CMD_KRAMER_MENU'"

	ssCmdKramer[ CMD_KRAMER_LEFT ] 		= "'CMD_KRAMER_LEFT'"
	ssCmdKramer[ CMD_KRAMER_RIGHT ] 	= "'CMD_KRAMER_RIGHT'"
	ssCmdKramer[ CMD_KRAMER_UP ] 		= "'CMD_KRAMER_UP'"
	ssCmdKramer[ CMD_KRAMER_DOWN ] 		= "'CMD_KRAMER_DOWN'"
	ssCmdKramer[ CMD_KRAMER_ENTER ] 	= "'CMD_KRAMER_ENTER'"

	ssCmdKramer[ CMD_KRAMER_POWER_OFF ] 	= "'CMD_KRAMER_POWER_OFF'"

	 clearCola( cKramer, 'Kramer' )

	define_function kramer(integer iCmd)
	{
		send_string 0, "ssCmdKramer[ iCmd ]"
		send_string dvKramer, sCmdKramer[ iCmd ]
	}

DEFINE_PROGRAM

MainLine_Kramer()


DEFINE_EVENT

data_event[ dvKramer ]
{
	string:
	{
		  local_var char buffer[ 50 ]
		  buffer = "data.text"
		  send_string 0, "'KRAMER RESP [', buffer ,']'"
	}
}

