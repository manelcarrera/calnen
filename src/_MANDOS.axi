PROGRAM_NAME='_MANDOS'

DEFINE_CONSTANT

//--------------------------------------------------------------------------------------
//Meridian
BTN_M_MER_CD		=	1001
BTN_M_MER_RADIO	=	1002
BTN_M_MER_DVD		=	1003
BTN_M_MER_DVDR		=	1004
BTN_M_MER_AUX		=	1005
BTN_M_MER_TV		=	1006
BTN_M_MER_SAT		=	1007
BTN_M_MER_CABLE	=	1008
BTN_M_MER_PVR		=	1009
BTN_M_MER_VCR1		=	1010
BTN_M_MER_TAPE		=	1011
BTN_M_MER_MOVIE	=	1012
BTN_M_MER_OFF		=	1013

CMD_M_MER_CD		= 1
CMD_M_MER_RADIO	= 2
CMD_M_MER_DVD		= 3
CMD_M_MER_DVDR		= 4
CMD_M_MER_AUX		= 5
CMD_M_MER_TV		= 6
CMD_M_MER_SAT		= 7
CMD_M_MER_CABLE	= 8
CMD_M_MER_PVR		= 9
CMD_M_MER_VCR1		= 10
CMD_M_MER_TAPE		= 11
CMD_M_MER_MOVIE	= 12
CMD_M_MER_OFF		= 13
//--------------------------------------------------------------------------------------
//Faroudja
BTN_M_FAR_LETTERBOX	=	1101
BTN_M_FAR_4_3			=	1102
BTN_M_FAR_ANAMORPHIC	=	1103



DEFINE_VARIABLE

//--------------------------------------------------------------------------------------
//Meridian
integer aBtnMandoMeridian[]  = 		
{
	 BTN_M_MER_CD,
	 BTN_M_MER_RADIO,
	 BTN_M_MER_DVD,
	 BTN_M_MER_DVDR,
	 BTN_M_MER_AUX,
	 BTN_M_MER_TV,
	 BTN_M_MER_SAT,
	 BTN_M_MER_CABLE,
	 BTN_M_MER_PVR,
	 BTN_M_MER_VCR1,
	 BTN_M_MER_TAPE,
	 BTN_M_MER_MOVIE,
	 BTN_M_MER_OFF
}
integer aCmdMandoMeridian[]  = 		
{
	 CMD_M_MER_CD,
	 CMD_M_MER_RADIO,
	 CMD_M_MER_DVD,
	 CMD_M_MER_DVDR,
	 CMD_M_MER_AUX,
	 CMD_M_MER_TV,
	 CMD_M_MER_SAT,
	 CMD_M_MER_CABLE,
	 CMD_M_MER_PVR,
	 CMD_M_MER_VCR1,
	 CMD_M_MER_TAPE,
	 CMD_M_MER_MOVIE,
	 CMD_M_MER_OFF
}
sCmdMandoMeridian[ 50 ][ 10 ]
//--------------------------------------------------------------------------------------
//Faroudja
integer aBtnMandoFaroudja[]  = 		
{
	 BTN_M_FAR_LETTERBOX,
	 BTN_M_FAR_4_3,
	 BTN_M_FAR_ANAMORPHIC
}

DEFINE_START

//--------------------------------------------------------------------------------------
//Meridian
sCmdMandoMeridian[ CMD_M_MER_CD ] 		= "''"
sCmdMandoMeridian[ CMD_M_MER_RADIO ] 	= "''"
sCmdMandoMeridian[ CMD_M_MER_DVD ] 		= "''"
sCmdMandoMeridian[ CMD_M_MER_DVDR ] 	= "''"
sCmdMandoMeridian[ CMD_M_MER_AUX ] 		= "''"
sCmdMandoMeridian[ CMD_M_MER_TV ] 		= "''"
sCmdMandoMeridian[ CMD_M_MER_SAT ] 		= "''"
sCmdMandoMeridian[ CMD_M_MER_CABLE ] 	= "''"
sCmdMandoMeridian[ CMD_M_MER_PVR ] 		= "''"
sCmdMandoMeridian[ CMD_M_MER_VCR1 ] 	= "''"
sCmdMandoMeridian[ CMD_M_MER_TAPE ] 	= "''"
sCmdMandoMeridian[ CMD_M_MER_MOVIE ] 	= "''"
sCmdMandoMeridian[ CMD_M_MER_OFF ] 		= "''"


DEFINE_EVENT

button_event[ dvTp, aBtnMandoMeridian ]{ push: { send_string dvProc, sCmdMandoMeridian[ aCmdMandoMeridian[ Get_Last( aBtnMandoMeridian ) ] ] } }

/*button_event[ dvTp, aBtnMandoFaroudja ]
{ 
	 push: 
	 { 
		  local_var index, btn
		  index = Get_Last( aBtnMandoFaroudja )
		  btn = aBtnMandoFaroudja[ index ]
		  
		  switch( btn )
		  {
				case BTN_M_FAR_LETTERBOX:		{ send_string dvEscF, sCmdEscF[ CMD_ESC_F_ASPECT_LETTERBOX ] }
				case BTN_M_FAR_4_3:				{ send_string dvEscF, sCmdEscF[ CMD_ESC_F_ASPECT_4_3 ] }
				case BTN_M_FAR_ANAMORPHIC:		{ send_string dvEscF, sCmdEscF[ CMD_ESC_F_ASPECT_ANAMORPHIC ] }
		  }
	 }
}*/