PROGRAM_NAME='_rPROC_Meridian_861'

DEFINE_CONSTANT

/*//Procesador
BTN_PROC_ON						= 401
BTN_PROC_OFF					= 402
BTN_PROC_VIDEO					= 403
BTN_PROC_SVIDEO				= 404
BTN_PROC_DVI					= 405
BTN_PROC_RGB					= 406
BTN_PROC_YCRCB					= 407
BTN_PROC_ANAMORFIC			= 408
BTN_PROC_4_3					= 409
BTN_PROC_LETTERBOX			= 410
//Proyector
BTN_PROY_ON						= 351
BTN_PROY_OFF					= 352
BTN_PROY_MENU					= 353
BTN_PROY_EXIT					= 354
BTN_PROY_UP						= 355
BTN_PROY_LEFT					= 356
BTN_PROY_OK						= 357
BTN_PROY_RIGHT					= 358
BTN_PROY_DOWN					= 359*/

//BTN_DVD_DSP				= 167

BTN_PROC_CLEAR			= 169
BTN_PROC_DISPLAY		= 171
//BTN_PROC_ANGLE			= 172
//BTN_PROC_DSP			= 173

BTN_PROC_DSP_DIRECT	= 801
BTN_PROC_DSP_MUSIC		= 802
BTN_PROC_DSP_DOLBY		= 803
BTN_PROC_DSP_DISCRETE	= 804
BTN_PROC_DSP_STEREO	= 805
BTN_PROC_DSP_TRIFIELD	= 806
BTN_PROC_DSP_DTS		= 807
BTN_PROC_DSP_THX		= 808
BTN_PROC_DSP_PROLOGIC	= 809
BTN_PROC_DSP_TV_LOGIC	= 810



CMD_PROC_SRC_CD 				= 1
CMD_PROC_SRC_RADIO 			= 2
CMD_PROC_SRC_LP 				= 3
CMD_PROC_SRC_TV 				= 4
CMD_PROC_SRC_TAPE1 			= 5
CMD_PROC_SRC_TAPE2 			= 6
CMD_PROC_SRC_CDR 				= 7
CMD_PROC_SRC_CABLE 			= 8
CMD_PROC_SRC_DVD 				= 9
CMD_PROC_SRC_VCR1 			= 10
CMD_PROC_SRC_VCR2 			= 11
CMD_PROC_SRC_LASER_DISC 	= 12

CMD_PROC_VOL_UP 				= 13
CMD_PROC_VOL_DOWN 			= 14
CMD_PROC_MUTE 					= 15

CMD_PROC_STANDBY 				= 16

CMD_PROC_DVD_PLAY 			= 17
CMD_PROC_DVD_STOP 			= 18
CMD_PROC_DVD_PAUSE 			= 19
CMD_PROC_DVD_NEXT 			= 20
CMD_PROC_DVD_PREVIOUS		= 21
CMD_PROC_DVD_FAST_FORWARD	= 22
CMD_PROC_DVD_FAST_BACK		= 23

CMD_PROC_DVD_N0				= 24
CMD_PROC_DVD_N1				= 25
CMD_PROC_DVD_N2				= 26
CMD_PROC_DVD_N3				= 27
CMD_PROC_DVD_N4				= 28
CMD_PROC_DVD_N5				= 29
CMD_PROC_DVD_N6				= 30
CMD_PROC_DVD_N7				= 31
CMD_PROC_DVD_N8				= 32
CMD_PROC_DVD_N9				= 33
CMD_PROC_VOL_00				= 34
CMD_PROC_VOL_20				= 35

CMD_PROC_CLEAR					= 36
CMD_PROC_DISPLAY				= 37
CMD_PROC_ANGLE					= 38

CMD_PROC_DSP_DIRECT			= 39
CMD_PROC_DSP_MUSIC			= 40
CMD_PROC_DSP_TRIFIELD		= 41
CMD_PROC_DSP_DISCRETE		= 42

CMD_PROC_DSP_PROLOGIC		= 43
CMD_PROC_DSP_TV_LOGIC		= 44
CMD_PROC_DSP_STEREO			= 45
CMD_PROC_DSP_THX				= 46
//CMD_PROC_DSP_DOLBY			= 47
//CMD_PROC_DSP_DTS				= 48

CMD_PROC_MENU_UP				= 49
CMD_PROC_MENU_DOWN			= 50
CMD_PROC_NULL_COMMAND			= 51


LEN_CMD_PROC					= 10 //Ojito con esto, no vaya a crecer la len de los comandos 

DEFINE_VARIABLE

char sCmdProc[ 60 ][ LEN_CMD_PROC ]

integer aBtnProc[] =
{
	 BTN_PROC_CLEAR,
	 BTN_PROC_DISPLAY
	 //BTN_PROC_ANGLE
}

integer aCmdProc[] =
{
	 CMD_PROC_CLEAR,
	 CMD_PROC_DISPLAY
	 //CMD_PROC_ANGLE
}

/*integer aBtnProc[] =
{
	 BTN_PROC_ON,
	 BTN_PROC_OFF,
	 BTN_PROC_VIDEO,
	 BTN_PROC_SVIDEO,
	 BTN_PROC_DVI,
	 BTN_PROC_RGB,
	 BTN_PROC_YCRCB,
	 BTN_PROC_ANAMORFIC,
	 BTN_PROC_4_3,
	 BTN_PROC_LETTERBOX
}

integer aCmdProc[] =
{
	 CMD_PROC_STANDBY,
	 CMD_PROC_STANDBY	//Cuidadín, que es lo mismo para el ON y para el OFF
}*/

integer aBtnDSP[] =
{
	 BTN_PROC_DSP_DIRECT,
	 BTN_PROC_DSP_MUSIC,
	 //BTN_PROC_DSP_DOLBY,
	 BTN_PROC_DSP_DISCRETE,
	 BTN_PROC_DSP_STEREO,
	 BTN_PROC_DSP_TRIFIELD,
	 //BTN_PROC_DSP_DTS,
	 BTN_PROC_DSP_THX,
	 BTN_PROC_DSP_PROLOGIC,
	 BTN_PROC_DSP_TV_LOGIC
}

integer aCmdDSP[] =
{
	 CMD_PROC_DSP_DIRECT,
	 CMD_PROC_DSP_MUSIC,
	 //CMD_PROC_DSP_DOLBY,
	 CMD_PROC_DSP_DISCRETE,
	 CMD_PROC_DSP_STEREO,
	 CMD_PROC_DSP_TRIFIELD,
	 //CMD_PROC_DSP_DTS,
	 CMD_PROC_DSP_THX,
	 CMD_PROC_DSP_PROLOGIC,
	 CMD_PROC_DSP_TV_LOGIC
}


tCola cProc
ssCmdProc[ 100 ][ 50 ]

define_function MainLineProc()
{
   local_var tCmd cmd

	 switch( cProc.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cProc, cmd ) )
				{
					  send_string 0, "ssCmdProc[ cmd.cmd ]"

					  if( cmd.cmd < CMD_PROC_NULL_COMMAND )
					  {
						  send_string dvProc, sCmdProc[ cmd.cmd ]
					  }

					  cProc.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cProc.last.tExe )
				{
					  cProc.estado = WAITING_EXECUTION
					  wait cProc.last.tExe
						  cProc.estado = FREE
				}
				else{ cProc.estado = FREE }
		  }
	 }
}


DEFINE_START

sCmdProc[ CMD_PROC_SRC_CD ]				= "'CD',$0d"
sCmdProc[ CMD_PROC_SRC_RADIO ]			= "'RD',$0d"
sCmdProc[ CMD_PROC_SRC_LP ]				= "'LP',$0d"
sCmdProc[ CMD_PROC_SRC_TV ]				= "'TV',$0d"
sCmdProc[ CMD_PROC_SRC_TAPE1 ]			= "'T1',$0d"
sCmdProc[ CMD_PROC_SRC_TAPE2 ]			= "'T2',$0d"
sCmdProc[ CMD_PROC_SRC_CDR ]				= "'CR',$0d"
sCmdProc[ CMD_PROC_SRC_CABLE ]			= "'CB',$0d"
sCmdProc[ CMD_PROC_SRC_DVD ]				= "'DV',$0d"
sCmdProc[ CMD_PROC_SRC_VCR1 ]				= "'V1',$0d"
sCmdProc[ CMD_PROC_SRC_VCR2 ]				= "'V2',$0d"
sCmdProc[ CMD_PROC_SRC_LASER_DISC ]		= "'LD',$0d"

sCmdProc[ CMD_PROC_VOL_UP ]				= "'VP',$0d"
sCmdProc[ CMD_PROC_VOL_DOWN ]				= "'VM',$0d"
sCmdProc[ CMD_PROC_MUTE ]					= "'MU',$0d"

sCmdProc[ CMD_PROC_STANDBY ]				= "'SB',$0d"

sCmdProc[ CMD_PROC_DVD_PLAY ]				= "'PL',$0d"
sCmdProc[ CMD_PROC_DVD_STOP ]				= "'ST',$0d"
sCmdProc[ CMD_PROC_DVD_PAUSE ]			= "'PS',$0d"
sCmdProc[ CMD_PROC_DVD_NEXT ]				= "'NE',$0d"
sCmdProc[ CMD_PROC_DVD_PREVIOUS ]		= "'PR',$0d"
sCmdProc[ CMD_PROC_DVD_FAST_FORWARD ]	= "'FF',$0d"
sCmdProc[ CMD_PROC_DVD_FAST_BACK ]		= "'FB',$0d"
sCmdProc[ CMD_PROC_DVD_N0 ]				= "'N0',$0d"
sCmdProc[ CMD_PROC_DVD_N1 ]				= "'N1',$0d"
sCmdProc[ CMD_PROC_DVD_N2 ]				= "'N2',$0d"
sCmdProc[ CMD_PROC_DVD_N3 ]				= "'N3',$0d"
sCmdProc[ CMD_PROC_DVD_N4 ]				= "'N4',$0d"
sCmdProc[ CMD_PROC_DVD_N5 ]				= "'N5',$0d"
sCmdProc[ CMD_PROC_DVD_N6 ]				= "'N6',$0d"
sCmdProc[ CMD_PROC_DVD_N7 ]				= "'N7',$0d"
sCmdProc[ CMD_PROC_DVD_N8 ]				= "'N8',$0d"
sCmdProc[ CMD_PROC_DVD_N9 ]				= "'N9',$0d"

sCmdProc[ CMD_PROC_VOL_00 ]				= "'VN00',$0d"
sCmdProc[ CMD_PROC_VOL_20 ]				= "'VN20',$0d"

sCmdProc[ CMD_PROC_CLEAR ]					= "'CL',$0d"
sCmdProc[ CMD_PROC_DISPLAY ]				= "'DI',$0d"
sCmdProc[ CMD_PROC_ANGLE ]					= "'AN',$0d"

sCmdProc[ CMD_PROC_DSP_DIRECT ]			= "'PN0',$0d"
sCmdProc[ CMD_PROC_DSP_MUSIC ]			= "'PN1',$0d"
sCmdProc[ CMD_PROC_DSP_TRIFIELD ]		= "'PN2',$0d"

//sCmdProc[ CMD_PROC_DSP_DISCRETE ]		= "'PN14',$0d"
sCmdProc[ CMD_PROC_DSP_DISCRETE ]		= "'PN0D',$0d"

//sCmdProc[ CMD_PROC_DSP_PROLOGIC ]		= "'PN13',$0d"
sCmdProc[ CMD_PROC_DSP_PROLOGIC ]		= "'PN0C',$0d"

//sCmdProc[ CMD_PROC_DSP_TV_LOGIC ]		= "'PN10',$0d"
sCmdProc[ CMD_PROC_DSP_TV_LOGIC ]		= "'PN0A',$0d"

sCmdProc[ CMD_PROC_DSP_STEREO ]			= "'PN5',$0d"

//sCmdProc[ CMD_PROC_DSP_THX ]				= "'PN18',$0d"
sCmdProc[ CMD_PROC_DSP_THX ]				= "'PN12',$0d" //0x18

//sCmdProc[ CMD_PROC_DSP_DOLBY ]			= "'PN',$0d"
//sCmdProc[ CMD_PROC_DSP_DTS ]				= "'PN',$0d"

sCmdProc[ CMD_PROC_MENU_UP ]				= "'MP',$0d"
sCmdProc[ CMD_PROC_MENU_DOWN ]			= "'MM',$0d"

//----------------------------

ssCmdProc[ CMD_PROC_SRC_CD ]				= "'CMD_PROC_SRC_CD'"
ssCmdProc[ CMD_PROC_SRC_RADIO ]			= "'CMD_PROC_SRC_RADIO'"
ssCmdProc[ CMD_PROC_SRC_LP ]				= "'CMD_PROC_SRC_LP'"
ssCmdProc[ CMD_PROC_SRC_TV ]				= "'CMD_PROC_SRC_TV'"
ssCmdProc[ CMD_PROC_SRC_TAPE1 ]			= "'CMD_PROC_SRC_TAPE1'"
ssCmdProc[ CMD_PROC_SRC_TAPE2 ]			= "'CMD_PROC_SRC_TAPE2'"
ssCmdProc[ CMD_PROC_SRC_CDR ]				= "'CMD_PROC_SRC_CDR'"
ssCmdProc[ CMD_PROC_SRC_CABLE ]			= "'CMD_PROC_SRC_CABLE'"
ssCmdProc[ CMD_PROC_SRC_DVD ]				= "'CMD_PROC_SRC_DVD'"
ssCmdProc[ CMD_PROC_SRC_VCR1 ]			= "'CMD_PROC_SRC_VCR1'"
ssCmdProc[ CMD_PROC_SRC_VCR2 ]			= "'CMD_PROC_SRC_VCR2'"
ssCmdProc[ CMD_PROC_SRC_LASER_DISC ]	= "'CMD_PROC_SRC_LASER_DISC'"

ssCmdProc[ CMD_PROC_VOL_UP ]				= "'CMD_PROC_VOL_UP'"
ssCmdProc[ CMD_PROC_VOL_DOWN ]			= "'CMD_PROC_VOL_DOWN'"
ssCmdProc[ CMD_PROC_MUTE ]					= "'CMD_PROC_MUTE'"

ssCmdProc[ CMD_PROC_STANDBY ]				= "'CMD_PROC_STANDBY'"

ssCmdProc[ CMD_PROC_DVD_PLAY ]			= "'CMD_PROC_DVD_PLAY'"
ssCmdProc[ CMD_PROC_DVD_STOP ]			= "'CMD_PROC_DVD_STOP'"
ssCmdProc[ CMD_PROC_DVD_PAUSE ]			= "'CMD_PROC_DVD_PAUSE'"
ssCmdProc[ CMD_PROC_DVD_NEXT ]			= "'CMD_PROC_DVD_NEXT'"
ssCmdProc[ CMD_PROC_DVD_PREVIOUS ]		= "'CMD_PROC_DVD_PREVIOUS'"
ssCmdProc[ CMD_PROC_DVD_FAST_FORWARD ]	= "'CMD_PROC_DVD_FAST_FORWARD'"
ssCmdProc[ CMD_PROC_DVD_FAST_BACK ]		= "'CMD_PROC_DVD_FAST_BACK'"
ssCmdProc[ CMD_PROC_DVD_N0 ]				= "'CMD_PROC_DVD_N0'"
ssCmdProc[ CMD_PROC_DVD_N1 ]				= "'CMD_PROC_DVD_N1'"
ssCmdProc[ CMD_PROC_DVD_N2 ]				= "'CMD_PROC_DVD_N2'"
ssCmdProc[ CMD_PROC_DVD_N3 ]				= "'CMD_PROC_DVD_N3'"
ssCmdProc[ CMD_PROC_DVD_N4 ]				= "'CMD_PROC_DVD_N4'"
ssCmdProc[ CMD_PROC_DVD_N5 ]				= "'CMD_PROC_DVD_N4'"
ssCmdProc[ CMD_PROC_DVD_N6 ]				= "'CMD_PROC_DVD_N6'"
ssCmdProc[ CMD_PROC_DVD_N7 ]				= "'CMD_PROC_DVD_N7'"
ssCmdProc[ CMD_PROC_DVD_N8 ]				= "'CMD_PROC_DVD_N8'"
ssCmdProc[ CMD_PROC_DVD_N9 ]				= "'CMD_PROC_DVD_N9'"

ssCmdProc[ CMD_PROC_VOL_00 ]				= "'CMD_PROC_VOL_00'"
ssCmdProc[ CMD_PROC_VOL_20 ]				= "'CMD_PROC_VOL_20'"

ssCmdProc[ CMD_PROC_CLEAR ]				= "'CMD_PROC_CLEAR'"
ssCmdProc[ CMD_PROC_DISPLAY ]				= "'CMD_PROC_DISPLAY'"
ssCmdProc[ CMD_PROC_ANGLE ]				= "'CMD_PROC_ANGLE'"

ssCmdProc[ CMD_PROC_DSP_DIRECT ]			= "'CMD_PROC_DSP_DIRECT'"
ssCmdProc[ CMD_PROC_DSP_MUSIC ]			= "'CMD_PROC_DSP_MUSIC'"
ssCmdProc[ CMD_PROC_DSP_TRIFIELD ]		= "'CMD_PROC_DSP_TRIFIELD'"
ssCmdProc[ CMD_PROC_DSP_DISCRETE ]		= "'CMD_PROC_DSP_DISCRETE'"

ssCmdProc[ CMD_PROC_DSP_PROLOGIC ]		= "'CMD_PROC_DSP_PROLOGIC'"
ssCmdProc[ CMD_PROC_DSP_TV_LOGIC ]		= "'CMD_PROC_DSP_TV_LOGIC'"
ssCmdProc[ CMD_PROC_DSP_STEREO ]			= "'CMD_PROC_DSP_STEREO'"
ssCmdProc[ CMD_PROC_DSP_THX ]				= "'CMD_PROC_DSP_THX'"

ssCmdProc[ CMD_PROC_MENU_UP ]				= "'CMD_PROC_MENU_UP'"
ssCmdProc[ CMD_PROC_MENU_DOWN ]			= "'CMD_PROC_MENU_DOWN'"

ssCmdProc[ CMD_PROC_NULL_COMMAND ]			= "'CMD_PROC_NULL_COMMAND'"

clearCola( cProc, 'Proc' )

DEFINE_PROGRAM

MainLineProc()


DEFINE_EVENT

button_event[ dvTp, aBtnProc ]
{ 
	 push:
	 { 
		  send_string 0, "'Proc:',sCmdProc[ aCmdProc[ Get_Last( aBtnProc ) ] ]"
		  send_string dvProc, sCmdProc[ aCmdProc[ Get_Last( aBtnProc ) ] ]
	 } 
}

button_event[ dvTp, aBtnDSP ]
{ 
	 push:
	 { 
		  //hidePopup('12-DSP')

		  send_string 0, "'Proc:',sCmdDvd[ aCmdDSP[ Get_Last( aBtnDSP ) ] ] "
		  send_string dvProc, sCmdProc[ aCmdDSP[ Get_Last( aBtnDSP ) ] ] 
	 } 
}

button_event[ dvTp, BTN_DVD_DSP ]
{ 
	 push:
	 { 
		  showPopup('12-DSP')
	 } 
}




