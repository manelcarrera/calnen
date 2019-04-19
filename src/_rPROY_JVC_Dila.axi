PROGRAM_NAME='_rPROY_JVC_Dila'

DEFINE_CONSTANT

//BTN_PROY_MENU				= 351
//BTN_PROY_SALIR				= 352

CMD_PROY_ON					= 1
CMD_PROY_OFF				= 2
CMD_PROY_FORMAT_50	= 3
CMD_PROY_FORMAT_60	= 4
CMD_PROY_HDMI1			= 5
CMD_PROY_HDMI2			= 6
CMD_PROY_ASK				= 7

PROY_FORMAT_50 			= 1
PROY_FORMAT_60 			= 2

TIEMPO_RESPONSE			= 50


DEFINE_VARIABLE

char sCmdProy[ 50 ][ 10 ]

tCola cProy
ssCmdProy[ 100 ][ 50 ]

define_function MainLineProy()
{
   local_var tCmd cmd

	 switch( cProy.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				//SEND_STRING 0,"'FREE'"
				if( pop( cProy, cmd ) )
				{
					  send_string 0, "'ssCmdProy ',ssCmdProy[ cmd.cmd ]"
					  send_string dvProy, sCmdProy[ cmd.cmd ]


					  switch( cmd.cmd )
					  {
						  case CMD_PROY_ON:
						  case CMD_PROY_OFF:
						  {
								setOrdenProyector( cmd.cmd )
								cProy.estado = WAITING_RESPONSE
								wait TIEMPO_RESPONSE 'tiempo_response_proyector'
								{
									 if( cmd.cmd == CMD_PROY_ON )
									 {
										  //ppush( cProy, CMD_PROY_ON, 50 )
											ppush( cProy, CMD_PROY_ASK, 1 )
										}
									 else
									 {
										  //ppush( cProy, CMD_PROY_OFF, 50 )	
											ppush( cProy, CMD_PROY_ASK, 1 )	
										}
									 
									 cProy.estado = FREE //para que coja la orden que acabamos de poner
								}
						  }
						  case CMD_PROY_FORMAT_50:
						  case CMD_PROY_FORMAT_60:
						  default:
						  {
								cProy.estado = WAITING_WAIT
						  }
					 }//switch( cmd.cmd )
				}//if
		  }//case FREE
		  //---------
		  case WAITING_RESPONSE:
		  //---------
		  {
				
				//SEND_STRING 0,"'WAITING_RESPONSE'"
				//no hago nada
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				//SEND_STRING 0,"'WAITING_WAIT'"
				if( cProy.last.tExe )
				{
					  cProy.estado = WAITING_EXECUTION
					  wait cProy.last.tExe
						  cProy.estado = FREE
				}
				else{ cProy.estado = FREE }
		  }
	 }
}


DEFINE_START

//sCmdProy[ CMD_PROY_ON ] 						= "$21, '1', $20, 'U0F', $20, '1', $0d" //operate, on
sCmdProy[ CMD_PROY_ON] = "'!',$89,$01,'PW1',$0A"
//sCmdProy[ CMD_PROY_OFF ] 						= "$21, '1', $20, 'U0F', $20, '0', $0d" //operate, off
sCmdProy[ CMD_PROY_OFF] = "'!',$89,$01,'PW0',$0A"
sCmdProy[ CMD_PROY_ASK] = "'?',$89,$01,'PW',$0A"
sCmdProy[ CMD_PROY_HDMI1] = "'!',$89,$01,'IP6',$0A"
sCmdProy[ CMD_PROY_HDMI2] = "'!',$89,$01,'IP7',$0A"

sCmdProy[ CMD_PROY_FORMAT_50 ] 				= "$21, '1', $20, 'Z03', $20, '1', $0d" //operation mode, 50p
sCmdProy[ CMD_PROY_FORMAT_60 ]				= "$21, '1', $20, 'Z03', $20, '0', $0d" //operation mode, 60p
//--------------------------------------
ssCmdProy[ CMD_PROY_ON ] 			= "'CMD_PROY_ON'"
ssCmdProy[ CMD_PROY_OFF ] 			= "'CMD_PROY_OFF'"
ssCmdProy[ CMD_PROY_FORMAT_50 ] 	= "'CMD_PROY_FORMAT_50'"
ssCmdProy[ CMD_PROY_FORMAT_60 ] 	= "'CMD_PROY_FORMAT_60'"
ssCmdProy[ CMD_PROY_HDMI1 ] = "'CMD_PROY_HDMI1'"
ssCmdProy[ CMD_PROY_HDMI2 ] = "'CMD_PROY_HDMI2'"
//--------------------------------------
clearCola( cProy, 'Proy' )

DEFINE_FUNCTION doProyector(INTEGER iCmd)
{
	SEND_STRING dvProy,sCmdProy[iCmd]
}

DEFINE_PROGRAM

//MainLineProy()

/*DEFINE_EVENT

data_event[ dvProy ]
{
	string:
	{
		  local_var char buffer[ 50 ]
		  integer len
		  char c
		  char s[2]

		  buffer = "data.text"

		  len = length_string( buffer ) 
		  //c = get_buffer_char( buffer )
		  s = mid_string( buffer, 7, 1 )
		  
		  send_string 0, "'PROY [', buffer ,']'"
		  
		  switch( getOrdenProyector() )
		  {
				case CMD_PROY_ON:
				case CMD_PROY_OFF:
				{
					 cancel_wait 'tiempo_response_proyector'
					 //cProy.estado = WAITING_WAIT
				}
		  }
			SEND_STRING 0, "'s[1] = ',s[1]"
			SEND_STRING 0, "'mid_string = ',s"
		  if( s[1] != "'@'" ) //respuesta KO -> reenvio
		  {
				if( isOrdenProyector( CMD_PROY_ON ) )
				{
					 send_string 0, "'Re-enviando encenido PROY...'"
					 //send_string 	dvProy, sCmdProy[ 	CMD_PROY_ON ] 
					 ppush( cProy, CMD_PROY_ON, 50 )				
					 cProy.estado = FREE					 
					 //setOrdenProyector( 0 ) //ninguna orden
				}
				else if( isOrdenProyector( CMD_PROY_OFF ) )
				{
					 send_string 0, "'Re-enviando apagado PROY...'"
					 //send_string 	dvProy, sCmdProy[ 	CMD_PROY_OFF ] 
					 ppush( cProy, CMD_PROY_OFF, 50 )	
					 cProy.estado = FREE					 
					 //setOrdenProyector( 0 ) //ninguna orden
				}
				else
				{
					 //nada por hacer
				}
		  }
		  else //respuesta OK
		  {
				if( isOrdenProyector( CMD_PROY_ON ) )
				{
					 send_string 0, "'PROY encendido...'"
					 cProy.estado = WAITING_WAIT
					 setOrdenProyector( 0 ) //ninguna orden
				}
				else if( isOrdenProyector( CMD_PROY_OFF ) )
				{
					 send_string 0, "'PROY apagado...'"
					 cProy.estado = WAITING_WAIT
					 setOrdenProyector( 0 ) //ninguna orden
				}
				else
				{
				}
		  }
	 }
	 //send_string 0, "'c = 0x[', itohex( c ) ,'] Ready...'"
}*/

