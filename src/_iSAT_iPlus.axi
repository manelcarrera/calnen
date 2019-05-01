PROGRAM_NAME='_iSAT_iPlus'

DEFINE_CONSTANT

BTN_IPLUS_1				=	51
BTN_IPLUS_2				=	52
BTN_IPLUS_3				=	53
BTN_IPLUS_4				=	54
BTN_IPLUS_5				=	55
BTN_IPLUS_6				=	56
BTN_IPLUS_7				=	57
BTN_IPLUS_8				=	58
BTN_IPLUS_9				=	59
BTN_IPLUS_PROG_UP		=	60
BTN_IPLUS_0				=	61
BTN_IPLUS_PROG_DOWN		=	62

BTN_IPLUS_VOL_UP		=	63
BTN_IPLUS_MUTE			=	64
BTN_IPLUS_VOL_DOWN		=	65

BTN_IPLUS_PREFE			= 67
BTN_IPLUS_PERSO			= 68
BTN_IPLUS_GUIA			= 69	
BTN_IPLUS_MAS			= 70
BTN_IPLUS_PILOTO		= 71
BTN_IPLUS_VOLVER		= 72
BTN_IPLUS_MI_CANAL		= 73
BTN_IPLUS_TDT			= 74
BTN_IPLUS_SERV			= 75

BTN_IPLUS_A				= 76
BTN_IPLUS_B				= 77
BTN_IPLUS_C				= 78
BTN_IPLUS_D				= 79
BTN_IPLUS_E				= 80


BTN_IPLUS_STOP			= 81
BTN_IPLUS_PLAY			= 82
BTN_IPLUS_PAUSE			= 83
BTN_IPLUS_REC			= 84
BTN_IPLUS_REW			= 85
BTN_IPLUS_FWD			= 86

BTN_IPLUS_SALIR			= 87
BTN_IPLUS_FORMAT		= 88

BTN_IPLUS_KEYBOARD		= 89
BTN_IPLUS_MESSAGE		= 90



//Estos códigos son buenos
IR_IPLUS_TV				= 1
IR_IPLUS_POWER			= 47 //2: éste no va
IR_IPLUS_DIGITAL_PLUS	= 3
IR_IPLUS_SERV			= 4
IR_IPLUS_PERSO			= 5
IR_IPLUS_PILOTO			= 6
IR_IPLUS_GUIA			= 7
IR_IPLUS_MI_CANAL 		= 8 
IR_IPLUS_TDT 			= 9
IR_IPLUS_VOL_UP 		= 10
IR_IPLUS_VOL_DOWN 		= 11
IR_IPLUS_PROG_UP 		= 12
IR_IPLUS_PROG_DOWN 		= 13
IR_IPLUS_MAS 			= 14
IR_IPLUS_ANCHO 			= 15
IR_IPLUS_VOLVER 		= 16
IR_IPLUS_SALIR 			= 17
IR_IPLUS_PAUSE 			= 18
IR_IPLUS_PLAY 			= 19
IR_IPLUS_REW 			= 20
IR_IPLUS_FWD 			= 21
IR_IPLUS_STOP 			= 22
IR_IPLUS_REC 			= 23
IR_IPLUS_A_ROJO			= 24
IR_IPLUS_B_VERDE		= 25
IR_IPLUS_C_AMARILLO		= 26
IR_IPLUS_D_AZUL			= 27
IR_IPLUS_TXT 			= 28
IR_IPLUS_1				= 29
IR_IPLUS_2				= 30
IR_IPLUS_3				= 31
IR_IPLUS_4				= 32
IR_IPLUS_5				= 33
IR_IPLUS_6				= 34
IR_IPLUS_7				= 35
IR_IPLUS_8				= 36
IR_IPLUS_9				= 37
IR_IPLUS_MUTE			= 38
IR_IPLUS_0				= 39
IR_IPLUS_PREFE			= 40
IR_IPLUS_LEFT 			= 41
IR_IPLUS_RIGHT 			= 42
IR_IPLUS_UP 			= 43
IR_IPLUS_DOWN 			= 44
IR_IPLUS_OK 			= 45

IR_IPLUS_KEYBOARD		= 49
IR_IPLUS_MESSAGE		= 50


DEFINE_VARIABLE


//---------------------------------------------------------------------
integer aBtnIPlus[]  = 		
{
	BTN_IPLUS_0,
	BTN_IPLUS_1,
	BTN_IPLUS_2,
	BTN_IPLUS_3,
	BTN_IPLUS_4,
	BTN_IPLUS_5,
	BTN_IPLUS_6,
	BTN_IPLUS_7,
	BTN_IPLUS_8,
	BTN_IPLUS_9,
	BTN_IPLUS_PROG_DOWN,
	BTN_IPLUS_PROG_UP,

	BTN_IPLUS_PREFE,
	BTN_IPLUS_PERSO,
	BTN_IPLUS_GUIA,
	BTN_IPLUS_MAS,
	BTN_IPLUS_PILOTO,
	BTN_IPLUS_VOLVER,
	BTN_IPLUS_MI_CANAL,
	BTN_IPLUS_TDT,
	BTN_IPLUS_SERV,
	BTN_IPLUS_FORMAT,

	BTN_IPLUS_A,
	BTN_IPLUS_B,
	BTN_IPLUS_C,
	BTN_IPLUS_D,
	BTN_IPLUS_E,


	BTN_IPLUS_STOP,
	BTN_IPLUS_PLAY,
	BTN_IPLUS_PAUSE,
	BTN_IPLUS_REW,
	BTN_IPLUS_FWD,
	BTN_IPLUS_REC,

	BTN_IPLUS_SALIR,

	BTN_IPLUS_KEYBOARD,
	BTN_IPLUS_MESSAGE
}


integer aIrIPlus[]  =	 	
{
	 IR_IPLUS_0,
	 IR_IPLUS_1,
	 IR_IPLUS_2,
	 IR_IPLUS_3,
	 IR_IPLUS_4,
	 IR_IPLUS_5,
	 IR_IPLUS_6,
	 IR_IPLUS_7,
	 IR_IPLUS_8,
	 IR_IPLUS_9,
	 IR_IPLUS_DOWN,//IR_IPLUS_PROG_DOWN,
	 IR_IPLUS_UP,//IR_IPLUS_PROG_UP,

	 IR_IPLUS_PREFE,
	 IR_IPLUS_PERSO,
	 IR_IPLUS_GUIA,
	 IR_IPLUS_MAS,
	 IR_IPLUS_PILOTO,
	 IR_IPLUS_VOLVER,
	 IR_IPLUS_MI_CANAL,
	 IR_IPLUS_TDT,
	 IR_IPLUS_SERV,
	 IR_IPLUS_ANCHO,

	 IR_IPLUS_A_ROJO,
	 IR_IPLUS_B_VERDE,
	 IR_IPLUS_C_AMARILLO,
	 IR_IPLUS_D_AZUL,
	 IR_IPLUS_TXT, //FIXME: Esta dos veces pero no importa

	 IR_IPLUS_STOP,
	 IR_IPLUS_PLAY,
	 IR_IPLUS_PAUSE,
	 IR_IPLUS_REW,
	 IR_IPLUS_FWD,
	 IR_IPLUS_REC,

	 IR_IPLUS_SALIR,

	IR_IPLUS_KEYBOARD,
	IR_IPLUS_MESSAGE
}


tCola cPlus
ssCmdPlus[ 100 ][ 50 ]


define_function MainLinePlus()
{
   local_var tCmd cmd

	 switch( cPlus.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cPlus, cmd ) )
				{
					  send_string 0, "ssCmdPlus[ cmd.cmd ]"
					  Pulse[ dvPlus, cmd.cmd ]
					  cPlus.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cPlus.last.tExe )
				{
					  cPlus.estado = WAITING_EXECUTION
					  wait cPlus.last.tExe
						  cPlus.estado = FREE
				}
				else{ cPlus.estado = FREE }
		  }
	 }
}




DEFINE_START

ssCmdPlus[ IR_IPLUS_TV ]			= "'IR_IPLUS_TV'"
ssCmdPlus[ IR_IPLUS_POWER ]			= "'IR_IPLUS_POWER'"
ssCmdPlus[ IR_IPLUS_DIGITAL_PLUS ]	= "'IR_IPLUS_DIGITAL_PLUS'"
ssCmdPlus[ IR_IPLUS_SERV ]			= "'IR_IPLUS_SERV'"
ssCmdPlus[ IR_IPLUS_PERSO ]			= "'IR_IPLUS_PERSO'"
ssCmdPlus[ IR_IPLUS_PILOTO ]		= "'IR_IPLUS_PILOTO'"
ssCmdPlus[ IR_IPLUS_GUIA ]			= "'IR_IPLUS_GUIA'"
ssCmdPlus[ IR_IPLUS_MI_CANAL ] 		= "'IR_IPLUS_MI_CANAL '"
ssCmdPlus[ IR_IPLUS_TDT ] 			= "'IR_IPLUS_TDT'"
ssCmdPlus[ IR_IPLUS_VOL_UP ] 		= "'IR_IPLUS_VOL_UP'"
ssCmdPlus[ IR_IPLUS_VOL_DOWN ] 		= "'IR_IPLUS_VOL_DOWN'"
ssCmdPlus[ IR_IPLUS_PROG_UP ] 		= "'IR_IPLUS_PROG_UP'"
ssCmdPlus[ IR_IPLUS_PROG_DOWN ] 	= "'IR_IPLUS_PROG_DOWN'"
ssCmdPlus[ IR_IPLUS_MAS ] 			= "'IR_IPLUS_MAS'"
ssCmdPlus[ IR_IPLUS_ANCHO ] 		= "'IR_IPLUS_ANCHO'"
ssCmdPlus[ IR_IPLUS_VOLVER ] 		= "'IR_IPLUS_VOLVER'"
ssCmdPlus[ IR_IPLUS_SALIR ] 		= "'IR_IPLUS_SALIR'"
ssCmdPlus[ IR_IPLUS_PAUSE ] 		= "'IR_IPLUS_PAUSE'"
ssCmdPlus[ IR_IPLUS_PLAY ] 			= "'IR_IPLUS_PLAY'"
ssCmdPlus[ IR_IPLUS_REW ] 			= "'IR_IPLUS_REW'"
ssCmdPlus[ IR_IPLUS_FWD ] 			= "'IR_IPLUS_FWD'"
ssCmdPlus[ IR_IPLUS_STOP ] 			= "'IR_IPLUS_STOP'"
ssCmdPlus[ IR_IPLUS_REC ] 			= "'IR_IPLUS_REC'"
ssCmdPlus[ IR_IPLUS_A_ROJO ]		= "'IR_IPLUS_A_ROJO'"
ssCmdPlus[ IR_IPLUS_B_VERDE ]		= "'IR_IPLUS_B_VERDE'"
ssCmdPlus[ IR_IPLUS_C_AMARILLO ]	= "'IR_IPLUS_C_AMARILLO'"
ssCmdPlus[ IR_IPLUS_D_AZUL ]		= "'IR_IPLUS_D_AZUL'"
ssCmdPlus[ IR_IPLUS_TXT ] 			= "'IR_IPLUS_TXT'"
ssCmdPlus[ IR_IPLUS_1 ]				= "'IR_IPLUS_1'"
ssCmdPlus[ IR_IPLUS_2 ]				= "'IR_IPLUS_2'"
ssCmdPlus[ IR_IPLUS_3 ]				= "'IR_IPLUS_3'"
ssCmdPlus[ IR_IPLUS_4 ]				= "'IR_IPLUS_4'"
ssCmdPlus[ IR_IPLUS_5 ]				= "'IR_IPLUS_5'"
ssCmdPlus[ IR_IPLUS_6 ]				= "'IR_IPLUS_6'"
ssCmdPlus[ IR_IPLUS_7 ]				= "'IR_IPLUS_7'"
ssCmdPlus[ IR_IPLUS_8 ]				= "'IR_IPLUS_8'"
ssCmdPlus[ IR_IPLUS_9 ]				= "'IR_IPLUS_9'"
ssCmdPlus[ IR_IPLUS_MUTE ]			= "'IR_IPLUS_MUTE'"
ssCmdPlus[ IR_IPLUS_0 ]				= "'IR_IPLUS_0'"
ssCmdPlus[ IR_IPLUS_PREFE ]			= "'IR_IPLUS_PREFE'"
ssCmdPlus[ IR_IPLUS_LEFT ] 			= "'IR_IPLUS_LEFT'"
ssCmdPlus[ IR_IPLUS_RIGHT ] 		= "'IR_IPLUS_RIGHT'"
ssCmdPlus[ IR_IPLUS_UP ] 			= "'IR_IPLUS_UP'"
ssCmdPlus[ IR_IPLUS_DOWN ] 			= "'IR_IPLUS_DOWN'"
ssCmdPlus[ IR_IPLUS_OK ] 			= "'IR_IPLUS_OK'"

clearCola( cPlus, 'iPlus' )

DEFINE_PROGRAM

MainLinePlus()


DEFINE_EVENT


button_event[ dvTp, aBtnIPlus ]
{ 
	 push:
	 {
		  local_var index, code
		  index = Get_Last( aBtnIPlus )
		  code = aIrIPlus[ index ]
		  send_string 0, "'iPlus code[',itoa( code ),']'"
		  Pulse[ dvPlus, code ] 
	 } 
}