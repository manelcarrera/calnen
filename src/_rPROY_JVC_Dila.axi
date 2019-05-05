PROGRAM_NAME='_rPROY_JVC_Dila'

DEFINE_CONSTANT


//BTN_PROY_MENU				= 351
//BTN_PROY_SALIR				= 352

////////////////// Buttons

BTN_PROY_ON	= 353
BTN_PROY_OFF	= 354

BTN_PROY_HDMI1			= 355
BTN_PROY_HDMI2			= 356
BTN_PROY_MENU			= 357
BTN_PROY_INFO			= 358
BTN_PROY_MODE_FILM		= 359
BTN_PROY_MODE_CINEMA	= 360
BTN_PROY_MODE_ANIMATION	= 361
BTN_PROY_MODE_NATURAL	= 362
BTN_PROY_MODE_THX		= 363
BTN_PROY_MODE_USER		= 364

BTN_PROY_BACK			= 365

////////////////// Commands

CMD_PROY_ON					= 1
CMD_PROY_OFF				= 2
CMD_PROY_FORMAT_50	= 3
CMD_PROY_FORMAT_60	= 4
CMD_PROY_HDMI1			= 5
CMD_PROY_HDMI2			= 6
CMD_PROY_ASK				= 7

//2019-05
CMD_PROY_DOWN 	= 8
CMD_PROY_UP 	= 9
CMD_PROY_LEFT 	= 10
CMD_PROY_RIGHT	= 11

CMD_PROY_OK	= 12

CMD_PROY_MENU	= 13
CMD_PROY_INFO	= 14

CMD_PROY_MODE_FILM		= 15
CMD_PROY_MODE_CINEMA	= 16
CMD_PROY_MODE_ANIMATION	= 17
CMD_PROY_MODE_NATURAL	= 18
CMD_PROY_MODE_THX		= 19
CMD_PROY_MODE_USER		= 20

CMD_PROY_BACK			= 21




//////////////////




PROY_FORMAT_50 			= 1
PROY_FORMAT_60 			= 2

TIEMPO_RESPONSE			= 50


DEFINE_VARIABLE

integer aBtnProy[] =
{
	BTN_PROY_ON,
	BTN_PROY_OFF,
	BTN_PROY_HDMI1,
	BTN_PROY_HDMI2,
	BTN_PROY_MENU,
	BTN_PROY_INFO,
	BTN_PROY_MODE_FILM,
	BTN_PROY_MODE_CINEMA,
	BTN_PROY_MODE_ANIMATION,
	BTN_PROY_MODE_NATURAL,
	BTN_PROY_MODE_THX,
	BTN_PROY_MODE_USER,
	CMD_PROY_BACK
}

integer aCmdProy[] =
{
	CMD_PROY_ON,
	CMD_PROY_OFF,
	CMD_PROY_HDMI1,
	CMD_PROY_HDMI2,
	CMD_PROY_MENU,
	CMD_PROY_INFO,
	CMD_PROY_MODE_FILM,
	CMD_PROY_MODE_CINEMA,
	CMD_PROY_MODE_ANIMATION,
	CMD_PROY_MODE_NATURAL,
	CMD_PROY_MODE_THX,
	CMD_PROY_MODE_USER,
	CMD_PROY_BACK
}


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


// 2019-05
// Model: JVC model DLA-RS600S   4K/2K 1900 ANSI
// I've the manual in a PDF qith the serial commands description
// If remote control type 'B' add '6' before the data
// Example: 'RC7302' (type 'A') -> 'RC67302' (type 'B')

sCmdProy[ CMD_PROY_DOWN] 	= "'!',$89,$01,'RC7302',$0A"
sCmdProy[ CMD_PROY_UP] 		= "'!',$89,$01,'RC7301',$0A"
sCmdProy[ CMD_PROY_LEFT] 	= "'!',$89,$01,'RC7336',$0A"
sCmdProy[ CMD_PROY_RIGHT] 	= "'!',$89,$01,'RC7334',$0A"
sCmdProy[ CMD_PROY_OK] 		= "'!',$89,$01,'RC732F',$0A"

sCmdProy[ CMD_PROY_MENU] 	= "'!',$89,$01,'RC732E',$0A"
sCmdProy[ CMD_PROY_INFO] 	= "'!',$89,$01,'RC7374',$0A"

sCmdProy[ CMD_PROY_MODE_FILM ]		= "'!',$89,$01,'RC7369',$0A" 
sCmdProy[ CMD_PROY_MODE_CINEMA ]	= "'!',$89,$01,'RC7368',$0A" 
sCmdProy[ CMD_PROY_MODE_ANIMATION ]	= "'!',$89,$01,'RC7366',$0A" 
sCmdProy[ CMD_PROY_MODE_NATURAL	] 	= "'!',$89,$01,'RC736A',$0A" // ??
sCmdProy[ CMD_PROY_MODE_THX ]		= "'!',$89,$01,'RC736F',$0A" 
sCmdProy[ CMD_PROY_MODE_USER ]		= "'!',$89,$01,'RC73D7',$0A" 

// Not in the reference
/*sCmdProy[ CMD_PROY_MODE_FILM ]		= "'!',$89,$01,'PMPM0',$0A" // PMPM0
sCmdProy[ CMD_PROY_MODE_CINEMA ]	= "'!',$89,$01,'PMPM1',$0A" // PMPM1
sCmdProy[ CMD_PROY_MODE_ANIMATION ]	= "'!',$89,$01,'PMPM2',$0A" // PMPM2
sCmdProy[ CMD_PROY_MODE_NATURAL	] 	= "'!',$89,$01,'PMPM3',$0A" // PMPM3
sCmdProy[ CMD_PROY_MODE_THX ]		= "'!',$89,$01,'PMPM9',$0A" // PMPM9
sCmdProy[ CMD_PROY_MODE_USER ]		= "'!',$89,$01,'PMPM6',$0A" // (User1)	// PPM6*/


sCmdProy[ CMD_PROY_BACK ]		= "'!',$89,$01,'RC7303',$0A"



sCmdProy[ CMD_PROY_FORMAT_50 ] 				= "$21, '1', $20, 'Z03', $20, '1', $0d" //operation mode, 50p
sCmdProy[ CMD_PROY_FORMAT_60 ]				= "$21, '1', $20, 'Z03', $20, '0', $0d" //operation mode, 60p
//--------------------------------------
ssCmdProy[ CMD_PROY_ON ] 			= "'CMD_PROY_ON'"
ssCmdProy[ CMD_PROY_OFF ] 			= "'CMD_PROY_OFF'"
ssCmdProy[ CMD_PROY_FORMAT_50 ] 	= "'CMD_PROY_FORMAT_50'"
ssCmdProy[ CMD_PROY_FORMAT_60 ] 	= "'CMD_PROY_FORMAT_60'"
ssCmdProy[ CMD_PROY_HDMI1 ] = "'CMD_PROY_HDMI1'"
ssCmdProy[ CMD_PROY_HDMI2 ] = "'CMD_PROY_HDMI2'"

ssCmdProy[ CMD_PROY_DOWN ] 	= "'CMD_PROY_DOWN'"
ssCmdProy[ CMD_PROY_UP ]	= "'CMD_PROY_UP'"
ssCmdProy[ CMD_PROY_LEFT ] 	= "'CMD_PROY_LEFT'"
ssCmdProy[ CMD_PROY_RIGHT ]	= "'CMD_PROY_RIGHT'"
ssCmdProy[ CMD_PROY_OK ]	= "'CMD_PROY_OK'"

ssCmdProy[ CMD_PROY_MENU ]	= "'CMD_PROY_MENU'"
ssCmdProy[ CMD_PROY_INFO ]	= "'CMD_PROY_INFO'"

ssCmdProy[ CMD_PROY_MODE_FILM ]		= "'CMD_PROY_MODE_FILM'"
ssCmdProy[ CMD_PROY_MODE_CINEMA ]	= "'CMD_PROY_MODE_CINEMA'"
ssCmdProy[ CMD_PROY_MODE_ANIMATION ]= "'CMD_PROY_MODE_ANIMATION'"
ssCmdProy[ CMD_PROY_MODE_NATURAL ] 	= "'CMD_PROY_MODE_NATURAL'"
ssCmdProy[ CMD_PROY_MODE_THX ]		= "'CMD_PROY_MODE_THX'" 
ssCmdProy[ CMD_PROY_MODE_USER ]		= "'CMD_PROY_MODE_USER'"

ssCmdProy[ CMD_PROY_BACK ]		= "'CMD_PROY_BACK'"


//--------------------------------------
clearCola( cProy, 'Proy' )

DEFINE_FUNCTION doProyector(INTEGER iCmd)
{
	SEND_STRING dvProy,sCmdProy[iCmd]
}


DEFINE_EVENT

button_event[ dvTp, aBtnProy ]
{ 
	 push:
	 { 
		  send_string 0, ssCmdProy[ aCmdProy[ Get_Last( aBtnProy ) ] ] 		// Logs
		  send_string dvProy, sCmdProy[ aCmdProy[ Get_Last( aBtnProy ) ] ] // Command
	 } 
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

