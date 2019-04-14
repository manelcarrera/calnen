PROGRAM_NAME='_iTV_Motor_LAVA_mmotion'

DEFINE_CONSTANT

BTN_MOTOR_UP			= 790
BTN_MOTOR_DOWN			= 791
BTN_MOTOR_IN			= 792
BTN_MOTOR_OUT			= 793
BTN_MOTOR_POWER_AUTO	= 794

IR_MOTOR_UP				= 1
IR_MOTOR_DOWN			= 2
IR_MOTOR_IN				= 3
IR_MOTOR_OUT			= 4
IR_MOTOR_POWER_AUTO		= 5

DEFINE_VARIABLE

integer aBtnMotor[]  = 		
{
	/*BTN_MOTOR_UP,
	BTN_MOTOR_DOWN,
	BTN_MOTOR_IN,
	BTN_MOTOR_OUT,*/
	BTN_MOTOR_POWER_AUTO
}

integer aIrMotor[]  =	 	
{
	/*IR_MOTOR_UP,
	IR_MOTOR_DOWN,
	IR_MOTOR_IN,
	IR_MOTOR_OUT,*/
	IR_MOTOR_POWER_AUTO
}

tCola cMotor
ssCmdMotor[ 100 ][ 50 ]

define_function MainLineMotor()
{
   local_var tCmd cmd

	 switch( cMotor.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cMotor, cmd ) )
				{
					  send_string 0, "ssCmdMotor[ cmd.cmd ]"
					  Pulse[ dvMotor, cmd.cmd ]
					  cMotor.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cMotor.last.tExe )
				{
					  cMotor.estado = WAITING_EXECUTION
					  wait cMotor.last.tExe
						  cMotor.estado = FREE
				}
				else{ cMotor.estado = FREE }
		  }
	 }
}

DEFINE_START

ssCmdTv[ IR_MOTOR_UP ] 			= "'IR_MOTOR_UP'"
ssCmdTv[ IR_MOTOR_DOWN ] 		= "'IR_MOTOR_DOWN'"
ssCmdTv[ IR_MOTOR_IN ] 			= "'IR_MOTOR_IN'"
ssCmdTv[ IR_MOTOR_OUT ] 		= "'IR_MOTOR_OUT'"
ssCmdTv[ IR_MOTOR_POWER_AUTO ] 	= "'IR_MOTOR_POWER_AUTO'"

clearCola( cMotor, 'Motor' )

DEFINE_PROGRAM

MainLineMotor()


DEFINE_EVENT

button_event[ dvTp, aBtnMotor ]
{ 
	 push:
	 {
		  local_var index, code
		  index = Get_Last( aBtnMotor )
		  code = aIrMotor[ index ]
		  
		  ppush( cMotor, code, 10 )
	 } 
}


button_event[ dvTp, BTN_MOTOR_IN ]
{
	 push: 				{ ppush( cMotor, IR_MOTOR_IN, 0 ) } 
	 hold[ 2, repeat ]: { ppush( cMotor, IR_MOTOR_IN, 0 ) }
}

button_event[ dvTp, BTN_MOTOR_OUT ]
{
	 push:				{ ppush( cMotor, IR_MOTOR_OUT, 0 ) } 
	 hold[ 2, repeat ]:	{ ppush( cMotor, IR_MOTOR_OUT, 0 ) }
}

