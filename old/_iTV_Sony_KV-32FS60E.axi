PROGRAM_NAME='_iTV_Sony_KV-32FS60E'

DEFINE_CONSTANT

BTN_TV_1				= 701
BTN_TV_2				= 702
BTN_TV_3				= 703
BTN_TV_4				= 704
BTN_TV_5				= 705
BTN_TV_6				= 706
BTN_TV_7				= 707
BTN_TV_8				= 708
BTN_TV_9				= 709
BTN_TV_DOWN			= 710
BTN_TV_0				= 711
BTN_TV_UP			= 712

BTN_TV_TELETEXT	= 716
BTN_TV_INFO			= 717
BTN_TV_EXTENSIO	= 718

BTN_TV_DIV_PANT		= 719
BTN_TV_FIJAR_CANAL	= 720
BTN_TV_FORMAT			= 721
BTN_TV_MULTI_FORMAT	= 722
BTN_TV_LUMINOSIDAD	= 723
BTN_TV_MENU				= 724
BTN_TV_CANVI_PANT		= 725
BTN_TV_ON_OFF			= 726


IR_TV_MUTE			= 	1
IR_TV_VIDEO			= 	2
IR_TV_TV				= 	3
IR_TV_A1				= 	4
IR_TV_A4				= 	5
IR_TV_B1				= 	6
IR_TV_B3				= 	7
IR_TV_B4				= 	8
IR_TV_C1				= 	9
IR_TV_C2				= 	10
IR_TV_C3				= 	11
IR_TV_C4				= 	12
IR_TV_1				= 	13
IR_TV_2				= 	14
IR_TV_3				= 	15
IR_TV_4				= 	16
IR_TV_5				= 	17
IR_TV_6				= 	18
IR_TV_7				= 	19
IR_TV_8				= 	20
IR_TV_9				= 	21
IR_TV_0				= 	22
IR_TV_0_IZDA		= 	23
IR_TV_0_DCHA		= 	24
IR_TV_ROJO			= 	25
IR_TV_VERDE			= 	26
IR_TV_AMARILLO		=  27	
IR_TV_AZUL			= 	28
IR_TV_VOL_DOWN		=  29	
IR_TV_VOL_UP		= 	30
IR_TV_MENU			= 	31
IR_TV_PROG_DOWN	= 	32
IR_TV_PROG_UP		= 	33

IR_TV_UP				= 	35
IR_TV_DOWN			= 	36
IR_TV_LEFT			= 	37
IR_TV_RIGHT			= 	38
IR_TV_OK				= 	39


IR_TV_ENTRADA_VIDEO_1 = 	40
IR_TV_ENTRADA_VIDEO_2 = 	41
IR_TV_ENTRADA_VIDEO_3 = 	42


DEFINE_VARIABLE

integer aBtnTV[]  = 		
{
	 BTN_TV_1,
	 BTN_TV_2,
	 BTN_TV_3,
	 BTN_TV_4,
	 BTN_TV_5,
	 BTN_TV_6,
	 BTN_TV_7,
	 BTN_TV_8,
	 BTN_TV_9,
	 BTN_TV_DOWN,
	 BTN_TV_0,
	 BTN_TV_UP,

	 BTN_TV_TELETEXT,
	 BTN_TV_INFO,
	 BTN_TV_EXTENSIO,
	 
	 BTN_TV_DIV_PANT,
	 BTN_TV_CANVI_PANT,
	 BTN_TV_ON_OFF,
	 BTN_TV_FIJAR_CANAL,
	 BTN_TV_FORMAT,
	 BTN_TV_MULTI_FORMAT,
	 BTN_TV_LUMINOSIDAD,
	 BTN_TV_MENU
}

integer aIrTV[]  =	 	
{
	 IR_TV_1,
	 IR_TV_2,
	 IR_TV_3,
	 IR_TV_4,
	 IR_TV_5,
	 IR_TV_6,
	 IR_TV_7,
	 IR_TV_8,
	 IR_TV_9,
	 IR_TV_PROG_DOWN,
	 IR_TV_0,
	 IR_TV_PROG_UP,
	 
	 IR_TV_B1,
	 IR_TV_A4,
	 IR_TV_B4,
	 
 	 IR_TV_C3,
 	 IR_TV_B3,
	 IR_TV_TV,
	 IR_TV_C4,
	 IR_TV_AZUL,
	 IR_TV_AMARILLO,
	 IR_TV_VERDE,
	 IR_TV_MENU
}

tCola cTV
ssCmdTv[ 100 ][ 50 ]

define_function MainLineTV()
{
   local_var tCmd cmd

	 switch( cTV.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cTV, cmd ) )
				{
					  send_string 0, "ssCmdTv[ cmd.cmd ]"
					  Pulse[ dvTV, cmd.cmd ]
					  cTV.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cTV.last.tExe )
				{
					  cTV.estado = WAITING_EXECUTION
					  wait cTV.last.tExe
						  cTV.estado = FREE
				}
				else{ cTV.estado = FREE }
		  }
	 }
}

DEFINE_START


ssCmdTv[ IR_TV_MUTE ]		= 	"'IR_TV_MUTE'"
ssCmdTv[ IR_TV_VIDEO ]		= 	"'IR_TV_VIDEO'"
ssCmdTv[ IR_TV_TV ]			= 	"'IR_TV_TV'"
ssCmdTv[ IR_TV_A1 ]			= 	"'IR_TV_A1'"
ssCmdTv[ IR_TV_A4 ]			= 	"'IR_TV_A4'"
ssCmdTv[ IR_TV_B1 ]			= 	"'IR_TV_B1'"
ssCmdTv[ IR_TV_B3 ]			= 	"'IR_TV_B3'"
ssCmdTv[ IR_TV_B4 ]			= 	"'IR_TV_B4'"
ssCmdTv[ IR_TV_C1 ]			= 	"'IR_TV_C1'"
ssCmdTv[ IR_TV_C2 ]			= 	"'IR_TV_C2'"
ssCmdTv[ IR_TV_C3 ]			= 	"'IR_TV_C3'"
ssCmdTv[ IR_TV_C4 ]			= 	"'IR_TV_C4'"
ssCmdTv[ IR_TV_1 ]			= 	"'IR_TV_1'"
ssCmdTv[ IR_TV_2 ]			= 	"'IR_TV_2'"
ssCmdTv[ IR_TV_3 ]			= 	"'IR_TV_3'"
ssCmdTv[ IR_TV_4 ]			= 	"'IR_TV_4'"
ssCmdTv[ IR_TV_5 ]			= 	"'IR_TV_5'"
ssCmdTv[ IR_TV_6 ]			= 	"'IR_TV_6'"
ssCmdTv[ IR_TV_7 ]			= 	"'IR_TV_7'"
ssCmdTv[ IR_TV_8 ]			= 	"'IR_TV_8'"
ssCmdTv[ IR_TV_9 ]			= 	"'IR_TV_9'"
ssCmdTv[ IR_TV_0 ]			= 	"'IR_TV_0'"
ssCmdTv[ IR_TV_0_IZDA ]		= 	"'IR_TV_0_IZDA'"
ssCmdTv[ IR_TV_0_DCHA ]		= 	"'IR_TV_0_DCHA'"
ssCmdTv[ IR_TV_ROJO ]		= 	"'IR_TV_ROJO'"
ssCmdTv[ IR_TV_VERDE ]		= 	"'IR_TV_VERDE'"
ssCmdTv[ IR_TV_AMARILLO ]	=  "'IR_TV_AMARILLO	'"
ssCmdTv[ IR_TV_AZUL ]		= 	"'IR_TV_AZUL'"
ssCmdTv[ IR_TV_VOL_DOWN ]	=  "'IR_TV_VOL_DOWN'"
ssCmdTv[ IR_TV_VOL_UP ]		= 	"'IR_TV_VOL_UP'"
ssCmdTv[ IR_TV_MENU ]		= 	"'IR_TV_MENU'"
ssCmdTv[ IR_TV_PROG_DOWN ]	= 	"'IR_TV_PROG_DOWN'"
ssCmdTv[ IR_TV_PROG_UP ]	= 	"'IR_TV_PROG_UP'"

ssCmdTv[ IR_TV_ENTRADA_VIDEO_1 ] = 	"'IR_TV_ENTRADA_VIDEO_1'"
ssCmdTv[ IR_TV_ENTRADA_VIDEO_2 ] = 	"'IR_TV_ENTRADA_VIDEO_2'"
ssCmdTv[ IR_TV_ENTRADA_VIDEO_3 ] = 	"'IR_TV_ENTRADA_VIDEO_3'"


clearCola( cTV, 'TV' )

DEFINE_PROGRAM

MainLineTV()


DEFINE_EVENT

button_event[ dvTp, aBtnTV ]
{ 
	 push:
	 {
		  local_var index, code
		  index = Get_Last( aBtnTV )
		  code = aIrTV[ index ]

		  send_string 0, "'TV code[',itoa( code ),']'"

		  Pulse[ dvTV, code ] 
	 } 
}

