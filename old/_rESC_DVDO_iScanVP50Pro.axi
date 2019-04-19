PROGRAM_NAME='_ESCALADOR_DVDO_iScanVP50Pro'

DEFINE_CONSTANT

ESC_STX 	= $02
ESC_ETX 	= $03
ESC_NULL = $00
ESC_CMD 	= '30'

ESC_FORMAT_4_3 		= 1
ESC_FORMAT_16_9 		= 2


//char _INPUT_SELECT[]				= {$34,$43}
//char _OUTPUT_SELECT[]				= {$36,$30}


CMD_ESC_D_ON					= 1
CMD_ESC_D_OFF					= 2
CMD_ESC_D_MENU					= 3
//Entradas
CMD_ESC_D_IN_HDMI1			= 4
CMD_ESC_D_IN_HDMI2			= 5
CMD_ESC_D_IN_HDMI3			= 6
CMD_ESC_D_IN_HDMI4			= 7
CMD_ESC_D_IN_COMP1			= 8
CMD_ESC_D_IN_COMP2			= 9
CMD_ESC_D_IN_COMP3_RGBHV	= 10

CMD_ESC_IN_VIDEO1				= 11
CMD_ESC_IN_VIDEO2				= 12

//Salidas
CMD_ESC_D_OUT_BNC				= 13
CMD_ESC_D_OUT_HDMI			= 14

CMD_ESC_ASPECT_4_3			= 15
CMD_ESC_ASPECT_16_9			= 16

//Salidas
CMD_ESC_D_AUDIO_SELECT_HDMI	 = 17
CMD_ESC_D_AUDIO_SELECT_SPDIF = 18
CMD_ESC_D_NULL_COMMAND		= 19


ESC_D_LEN_CMD					= 20 //son 12 per por si acaso

DEFINE_VARIABLE

char sCmdEscD[ 50 ][ ESC_D_LEN_CMD ];

//En el cms 'CMD_ESC_ON', '05' es le tipo de comando, 'A1' el cmd y '1' el parámetro

tCola cEsc
ssCmdEsc[ 100 ][ 50 ]

define_function MainLineEsc()
{
   local_var tCmd cmd

	 switch( cEsc.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cEsc, cmd ) )
				{
					  
					  send_string 0, "ssCmdEsc[ cmd.cmd ]"
					  
					  if( cmd.cmd < CMD_ESC_D_NULL_COMMAND )
					  {
							send_string dvEscD, sCmdEscD[ cmd.cmd ]
					  }
					  
					  //ppush_m( cMaster, dvEscD, cmd.cmd, 2 )
					  cEsc.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cEsc.last.tExe )
				{
					  cEsc.estado = WAITING_EXECUTION
					  wait cEsc.last.tExe
						  cEsc.estado = FREE
				}
				else{ cEsc.estado = FREE }
		  }
	 }
}


DEFINE_START

	 sCmdEscD[ CMD_ESC_D_ON ] 			= "ESC_STX, ESC_CMD, '05', 'A1', ESC_NULL, '1',	ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_OFF ] 		= "ESC_STX, ESC_CMD, '05', 'A1', ESC_NULL, '0', ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_MENU ] 		= "ESC_STX, ESC_CMD, '05', 'A2', ESC_NULL, '0', ESC_NULL, ESC_ETX"

	 //Entradas
	 sCmdEscD[ CMD_ESC_D_IN_HDMI1 ] 	= "ESC_STX, ESC_CMD, '05', '4C', ESC_NULL, '8', ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_IN_HDMI2 ] 	= "ESC_STX, ESC_CMD, '05', '4C', ESC_NULL, '9', ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_IN_HDMI3 ] 	= "ESC_STX, ESC_CMD, '06', '4C', ESC_NULL, '10',ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_IN_HDMI4 ] 	= "ESC_STX, ESC_CMD, '06', '4C', ESC_NULL, '11',ESC_NULL, ESC_ETX"

	 sCmdEscD[ CMD_ESC_D_IN_COMP1 ] 			= "ESC_STX, ESC_CMD, '05', '4C', ESC_NULL, '5',ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_IN_COMP2 ] 			= "ESC_STX, ESC_CMD, '05', '4C', ESC_NULL, '6',ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_IN_COMP3_RGBHV ] 	= "ESC_STX, ESC_CMD, '05', '4C', ESC_NULL, '7',ESC_NULL, ESC_ETX"

	 sCmdEscD[ CMD_ESC_IN_VIDEO1 ] = "ESC_STX, ESC_CMD, '05', '4C', ESC_NULL, '1',ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_IN_VIDEO2 ] = "ESC_STX, ESC_CMD, '05', '4C', ESC_NULL, '2',ESC_NULL, ESC_ETX"

	 //Salidas
	 sCmdEscD[ CMD_ESC_D_OUT_BNC ] 	= "ESC_STX, ESC_CMD, '05', '60', ESC_NULL, '1', ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_OUT_HDMI ] 	= "ESC_STX, ESC_CMD, '05', '60', ESC_NULL, '2', ESC_NULL, ESC_ETX"
	 
	//Relacion de aspecto
	 sCmdEscD[ CMD_ESC_ASPECT_4_3 ] 	= "ESC_STX, ESC_CMD, '05', 'E1', ESC_NULL, '1', ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_ASPECT_16_9 ] 	= "ESC_STX, ESC_CMD, '05', 'E1', ESC_NULL, '3', ESC_NULL, ESC_ETX"

	//Audio select
	 sCmdEscD[ CMD_ESC_D_AUDIO_SELECT_HDMI ] 	= "ESC_STX, ESC_CMD, '05', 'BA', ESC_NULL, '2', ESC_NULL, ESC_ETX"
	 sCmdEscD[ CMD_ESC_D_AUDIO_SELECT_SPDIF ] = "ESC_STX, ESC_CMD, '05', 'BA', ESC_NULL, '1', ESC_NULL, ESC_ETX"
	 

	 //---------

	 ssCmdEsc[ CMD_ESC_D_ON	]						= "'CMD_ESC_D_ON'"
	 ssCmdEsc[ CMD_ESC_D_OFF ]						= "'CMD_ESC_D_OFF'"
	 ssCmdEsc[ CMD_ESC_D_MENU ]					= "'CMD_ESC_D_MENU'"
	 ssCmdEsc[ CMD_ESC_D_IN_HDMI1 ]				= "'CMD_ESC_D_IN_HDMI1'"
	 ssCmdEsc[ CMD_ESC_D_IN_HDMI2 ]				= "'CMD_ESC_D_IN_HDMI2'"
	 ssCmdEsc[ CMD_ESC_D_IN_HDMI3 ]				= "'CMD_ESC_D_IN_HDMI3'"
	 ssCmdEsc[ CMD_ESC_D_IN_HDMI4 ]				= "'CMD_ESC_D_IN_HDMI4'"
	 ssCmdEsc[ CMD_ESC_D_IN_COMP1 ]				= "'CMD_ESC_D_IN_COMP1'"
	 ssCmdEsc[ CMD_ESC_D_IN_COMP2 ]				= "'CMD_ESC_D_IN_COMP2'"
	 ssCmdEsc[ CMD_ESC_D_IN_COMP3_RGBHV ]		= "'CMD_ESC_D_IN_COMP3_RGBHV'"
	 ssCmdEsc[ CMD_ESC_IN_VIDEO1 ]				= "'CMD_ESC_IN_VIDEO1'"
	 ssCmdEsc[ CMD_ESC_IN_VIDEO2 ]				= "'CMD_ESC_IN_VIDEO2'"
	 ssCmdEsc[ CMD_ESC_D_OUT_BNC ]				= "'CMD_ESC_D_OUT_BNC'"
	 ssCmdEsc[ CMD_ESC_D_OUT_HDMI ]				= "'CMD_ESC_D_OUT_HDMI'"
	 ssCmdEsc[ CMD_ESC_ASPECT_4_3 ]				= "'CMD_ESC_ASPECT_4_3'"
	 ssCmdEsc[ CMD_ESC_ASPECT_16_9 ]				= "'CMD_ESC_ASPECT_16_9'"
	 ssCmdEsc[ CMD_ESC_D_AUDIO_SELECT_HDMI ]	= "'CMD_ESC_D_AUDIO_SELECT_HDMI'"
	 ssCmdEsc[ CMD_ESC_D_AUDIO_SELECT_SPDIF ]	= "'CMD_ESC_D_AUDIO_SELECT_SPDIF'"
	 ssCmdEsc[ CMD_ESC_D_NULL_COMMAND ]			= "'CMD_ESC_D_NULL_COMMAND'"

	 clearCola( cEsc, 'Esc' )

DEFINE_PROGRAM

MainLineEsc()
	 

/*button_event[ dvTp, BTN_ESC_FORMATO ]
{
	 push:
	 {
		  send_string 0 , "'BTN_ESC_FORMATO, getFormato()[', itoa( getFormato() ),']'"
		 switch( getFormato() )
		  {
				case ESC_FORMAT_4_3:	
				{ 
					 //ppush( cEsc, CMD_ESC_ASPECT_16_9, 10 )
					 //send_string 0, "ssCmdEsc[ cmd.cmd ]"
				    send_string dvEsc, sCmdEsc[ CMD_ESC_ASPECT_16_9 ]
					 setFormato( ESC_FORMAT_16_9 )
				}
				case ESC_FORMAT_16_9:	
				{ 
					 //ppush( cEsc, CMD_ESC_ASPECT_4_3, 10 )
					 //send_string 0, "ssCmdEsc[ cmd.cmd ]"
				    send_string dvEsc, sCmdEsc[ CMD_ESC_ASPECT_4_3 ]
					 setFormato( ESC_FORMAT_4_3 )
				}
		  }
	 }
}*/

