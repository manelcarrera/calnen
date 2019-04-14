PROGRAM_NAME='_iTV_Panasonic_TX-P42GT50E'

DEFINE_CONSTANT

BTN_TV_1			= 701
BTN_TV_2			= 702
BTN_TV_3			= 703
BTN_TV_4			= 704
BTN_TV_5			= 705
BTN_TV_6			= 706
BTN_TV_7			= 707
BTN_TV_8			= 708
BTN_TV_9			= 709
BTN_TV_0			= 710

BTN_TV_CH_UP		= 711
BTN_TV_CH_DOWN		= 712

//BTN_TV_LIGHT		= 	720
BTN_TV_MENU			= 	721
BTN_TV_3D			= 	722
BTN_TV_TV			= 	723
BTN_TV_AV			= 	724
BTN_TV_I			= 	725
BTN_TV_X			= 	726
BTN_TV_INTERNET		= 	727
BTN_TV_VIERA_TOOLS	= 	728
BTN_TV_GUIDE		= 	729
BTN_TV_OPTION		= 	730
BTN_TV_BACK_RETURN	= 	731
BTN_TV_SURROUND		= 	732
BTN_TV_STTL			= 	733
BTN_TV_ASPECT		= 	734
//BTN_TV_SURROUND		= 	735
BTN_TV_LAST_VIEW	= 	736
BTN_TV_POWER		= 	737

BTN_TV_FFWD			= 	755
BTN_TV_PLAY			= 	751
BTN_TV_FRWD			= 	754
BTN_TV_PREV			= 	753
BTN_TV_PAUSE		= 	752
BTN_TV_NEXT			= 	756
BTN_TV_STOP			= 	750
BTN_TV_REC			= 	757

BTN_TV_RED			= 	770
BTN_TV_GREEN		= 	771
BTN_TV_YELLOW		= 	772
BTN_TV_BLUE			= 	773

BTN_TV_UP			= 	780
BTN_TV_DOWN			= 	781
BTN_TV_LEFT			= 	782
BTN_TV_RIGHT		= 	783
BTN_TV_OK			= 	784
BTN_TV_MUTE			= 	785
BTN_TV_VOL_DOWN		= 	786
BTN_TV_VOL_UP		= 	787

// Panasonic

IR_TV_POWER			= 	1

IR_TV_LIGHT			= 	2
IR_TV_MENU			= 	3
IR_TV_3D			= 	4
IR_TV_TV			= 	5
IR_TV_AV			= 	6
IR_TV_I				= 	7
IR_TV_X				= 	8
IR_TV_VIERA_TOOLS	= 	9
IR_TV_INTERNET		= 	10
IR_TV_GUIDE			= 	11

IR_TV_UP			= 	12
IR_TV_DOWN			= 	13
IR_TV_LEFT			= 	14
IR_TV_RIGHT			= 	15
IR_TV_OK			= 	16

IR_TV_OPTION		= 	17
IR_TV_BACK_RETURN	= 	18

IR_TV_RED			= 	19
IR_TV_GREEN			= 	20
IR_TV_YELLOW		= 	21
IR_TV_BLUE			= 	22

IR_TV_MUTE			= 	23
IR_TV_TEXT			= 	24
IR_TV_STTL			= 	25
IR_TV_ASPECT		= 	26
IR_TV_VOL_UP		=   27	
IR_TV_VOL_DOWN		= 	28

IR_TV_CH_UP			=   29	
IR_TV_CH_DOWN		= 	30

IR_TV_1				= 	31
IR_TV_2				= 	32
IR_TV_3				= 	33
IR_TV_4				= 	34
IR_TV_5				= 	35
IR_TV_6				= 	36
IR_TV_7				= 	37
IR_TV_8				= 	38
IR_TV_9				= 	39
IR_TV_0				= 	40

IR_TV_SURROUND		= 	41
IR_TV_LAST_VIEW		= 	42

IR_TV_FFWD			= 	43
IR_TV_PLAY			= 	44
IR_TV_FRWD			= 	45
IR_TV_PREV			= 	46
IR_TV_PAUSE			= 	47
IR_TV_NEXT			= 	48
IR_TV_STOP			= 	49
IR_TV_REC			= 	50

IR_TV_INPUT_HDMI_1	= 	51	//iPlus
IR_TV_INPUT_HDMI_2	= 	52	// OPO
IR_TV_INPUT_HDMI_3	= 	53	// Meridian
IR_TV_INPUT_AV_1	= 	54	//Video
//IR_TV_INPUT_TV		= 	55	//TV


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
	BTN_TV_0,

	BTN_TV_CH_UP,
	BTN_TV_CH_DOWN,

	//BTN_TV_LIGHT,
	BTN_TV_MENU,
	BTN_TV_3D,
	BTN_TV_TV,
	BTN_TV_AV,
	BTN_TV_I,
	BTN_TV_X,
	BTN_TV_INTERNET,
	BTN_TV_VIERA_TOOLS,
	BTN_TV_GUIDE,
	BTN_TV_OPTION,
	BTN_TV_BACK_RETURN,
	BTN_TV_SURROUND,
	BTN_TV_STTL,
	BTN_TV_ASPECT,
	//BTN_TV_SURROUND,
	BTN_TV_LAST_VIEW,

	BTN_TV_FFWD,
	BTN_TV_PLAY,
	BTN_TV_FRWD,
	BTN_TV_PREV,
	BTN_TV_PAUSE,
	BTN_TV_NEXT,
	BTN_TV_STOP,
	BTN_TV_REC,
	
	BTN_TV_RED,
	BTN_TV_GREEN,
	BTN_TV_YELLOW,
	BTN_TV_BLUE,
	
	BTN_TV_OK,
	BTN_TV_MUTE
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
	IR_TV_0,

	IR_TV_CH_UP,
	IR_TV_CH_DOWN,
	 
	//IR_TV_LIGHT,
	IR_TV_MENU,
	IR_TV_3D,
	IR_TV_TV,
	IR_TV_AV,
	IR_TV_I,
	IR_TV_X,
	IR_TV_INTERNET,
	IR_TV_VIERA_TOOLS,
	IR_TV_GUIDE,
	IR_TV_OPTION,
	IR_TV_BACK_RETURN,
	IR_TV_SURROUND,
	IR_TV_STTL,
	IR_TV_ASPECT,
	//IR_TV_SURROUND,
	IR_TV_LAST_VIEW,
	
	IR_TV_FFWD,
	IR_TV_PLAY,
	IR_TV_FRWD,
	IR_TV_PREV,
	IR_TV_PAUSE,
	IR_TV_NEXT,
	IR_TV_STOP,
	IR_TV_REC,
	
	IR_TV_RED,
	IR_TV_GREEN,
	IR_TV_YELLOW,
	IR_TV_BLUE,
	
	IR_TV_OK,
	IR_TV_MUTE
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
					
					if( cmd.cmd == IR_TV_UP ||
						cmd.cmd == IR_TV_DOWN ||
						cmd.cmd == IR_TV_LEFT ||
						cmd.cmd == IR_TV_RIGHT ||
						cmd.cmd == IR_TV_OK )
					{
						set_pulse_time( 1 )
						Pulse[ dvTV, cmd.cmd ]
						set_pulse_time( 2 )
					}
					else if( cmd.cmd == IR_TV_POWER )
					{
						set_pulse_time( 10 )
						Pulse[ dvTV, cmd.cmd ]
						set_pulse_time( 2 )
					}
					else
					{
						Pulse[ dvTV, cmd.cmd ]
					}
				
					//Pulse[ dvTV, cmd.cmd ]
					set_pulse_time( 2 )
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

ssCmdTv[ IR_TV_1 ] = "'IR_TV_1'"
ssCmdTv[ IR_TV_2 ] = "'IR_TV_2'"
ssCmdTv[ IR_TV_3 ] = "'IR_TV_3'"
ssCmdTv[ IR_TV_4 ] = "'IR_TV_4'"
ssCmdTv[ IR_TV_5 ] = "'IR_TV_5'"
ssCmdTv[ IR_TV_6 ] = "'IR_TV_6'"
ssCmdTv[ IR_TV_7 ] = "'IR_TV_7'"
ssCmdTv[ IR_TV_8 ] = "'IR_TV_8'"
ssCmdTv[ IR_TV_9 ] = "'IR_TV_9'"
ssCmdTv[ IR_TV_0 ] = "'IR_TV_0'"

ssCmdTv[ IR_TV_CH_UP ] 			= "'IR_TV_CH_UP'"
ssCmdTv[ IR_TV_CH_DOWN ] 		= "'IR_TV_CH_DOWN'"

ssCmdTv[ IR_TV_LIGHT ] 			= "'IR_TV_LIGHT'"
ssCmdTv[ IR_TV_MENU ] 			= "'IR_TV_MENU'"
ssCmdTv[ IR_TV_3D ] 			= "'IR_TV_3D'"
ssCmdTv[ IR_TV_TV ] 			= "'IR_TV_TV'"
ssCmdTv[ IR_TV_AV ] 			= "'IR_TV_AV'"
ssCmdTv[ IR_TV_I ] 				= "'IR_TV_I'"
ssCmdTv[ IR_TV_X ] 				= "'IR_TV_X'"
ssCmdTv[ IR_TV_INTERNET ] 		= "'IR_TV_INTERNET'"
ssCmdTv[ IR_TV_VIERA_TOOLS ] 	= "'IR_TV_VIERA_TOOLS'"
ssCmdTv[ IR_TV_GUIDE ] 			= "'IR_TV_GUIDE'"
ssCmdTv[ IR_TV_OPTION ] 		= "'IR_TV_OPTION'"
ssCmdTv[ IR_TV_BACK_RETURN ] 	= "'IR_TV_BACK_RETURN'"
ssCmdTv[ IR_TV_TEXT ] 			= "'IR_TV_TEXT'"
ssCmdTv[ IR_TV_STTL ] 			= "'IR_TV_STTL'"
ssCmdTv[ IR_TV_ASPECT ] 		= "'IR_TV_ASPECT'"
ssCmdTv[ IR_TV_SURROUND ] 		= "'IR_TV_SURROUND'"
ssCmdTv[ IR_TV_LAST_VIEW ] 		= "'IR_TV_LAST_VIEW'"

ssCmdTv[ IR_TV_FFWD ] 	= "'IR_TV_FFWD'"
ssCmdTv[ IR_TV_PLAY ] 	= "'IR_TV_PLAY'"
ssCmdTv[ IR_TV_FRWD ] 	= "'IR_TV_FRWD'"
ssCmdTv[ IR_TV_PREV ] 	= "'IR_TV_PREV'"
ssCmdTv[ IR_TV_PAUSE ] 	= "'IR_TV_PAUSE'"
ssCmdTv[ IR_TV_NEXT ] 	= "'IR_TV_NEXT'"
ssCmdTv[ IR_TV_STOP ] 	= "'IR_TV_STOP'"
ssCmdTv[ IR_TV_REC ] 	= "'IR_TV_REC'"

ssCmdTv[ IR_TV_UP ] 	= "'IR_TV_UP'"
ssCmdTv[ IR_TV_DOWN ] 	= "'IR_TV_DOWN'"
ssCmdTv[ IR_TV_LEFT ] 	= "'IR_TV_LEFT'"
ssCmdTv[ IR_TV_RIGHT ] 	= "'IR_TV_RIGHT'"
ssCmdTv[ IR_TV_OK ] 	= "'IR_TV_OK'"

ssCmdTv[ IR_TV_RED ] 	= "'IR_TV_RED'"
ssCmdTv[ IR_TV_GREEN ] 	= "'IR_TV_GREEN'"
ssCmdTv[ IR_TV_YELLOW ] = "'IR_TV_YELLOW'"
ssCmdTv[ IR_TV_BLUE ] 	= "'IR_TV_BLUE'"

ssCmdTv[ IR_TV_INPUT_HDMI_1 ] 	= "'IR_TV_INPUT_HDMI_1'"
ssCmdTv[ IR_TV_INPUT_HDMI_2 ] 	= "'IR_TV_INPUT_HDMI_2'"
ssCmdTv[ IR_TV_INPUT_HDMI_3 ] 	= "'IR_TV_INPUT_HDMI_3'"
ssCmdTv[ IR_TV_INPUT_AV_1 ] 	= "'IR_TV_INPUT_AV_1'"

ssCmdTv[ IR_TV_POWER ] 	= "'IR_TV_POWER'"
ssCmdTv[ IR_TV_TV ] 	= "'IR_TV_TV'"


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
		  
		  ppush( cTV, code, 0 )
	 } 
}

button_event[ dvTp, BTN_TV_VOL_UP ]
{
	 push:				{ ppush( cTV, IR_TV_VOL_UP, 0 ) }
	 hold[ 2, repeat ]:	{ ppush( cTV, IR_TV_VOL_UP, 0 ) }
}
button_event[ dvTp, BTN_TV_VOL_DOWN ]
{
	 push:				{ ppush( cTV, IR_TV_VOL_DOWN, 0 ) }
	 hold[ 2, repeat ]:	{ ppush( cTV, IR_TV_VOL_DOWN, 0 ) }
}
button_event[ dvTp, BTN_TV_UP ]
{
	 push:				{ ppush( cTV, IR_TV_UP, 0 ) }
	 hold[ 2, repeat ]:	{ ppush( cTV, IR_TV_UP, 0 ) }
}
button_event[ dvTp, BTN_TV_DOWN ]
{
	 push:				{ ppush( cTV, IR_TV_DOWN, 0 ) }
	 hold[ 2, repeat ]:	{ ppush( cTV, IR_TV_DOWN, 0 ) }
}
button_event[ dvTp, BTN_TV_LEFT ]
{
	 push:				{ ppush( cTV, IR_TV_LEFT, 0 ) }
	 hold[ 2, repeat ]:	{ ppush( cTV, IR_TV_LEFT, 0 ) }
}
button_event[ dvTp, BTN_TV_RIGHT ]
{
	 push:				{ ppush( cTV, IR_TV_RIGHT, 0 ) }
	 hold[ 2, repeat ]:	{ ppush( cTV, IR_TV_RIGHT, 0 ) }
}

button_event[ dvTp, BTN_TV_POWER ]
{
	 push:
	 {
		ppush( cTV, IR_TV_POWER, 20 )
	 }
}

