PROGRAM_NAME='LluisColl'

DEFINE_DEVICE

//Panel
dvTp						= 10001:1:0

//IR
dvTV						= 5001:9:0	//TV
dvVideo					= 5001:10:0	//8mm.
dvPlus					= 5001:11:0	//iPlus
dvRadio					= 5001:11:0	//Los canales de radio del iPlus, a partir del 243
dvSat						= 5001:12:0	//Pace 810
dvBluRay					= 5001:13:0	//Pioneer 
//dvSubwoofer			= 5001:14:0	//Subwoorfer

//RS232
dvProc					= 5001:1:0 //Meridian 861
dvDVD						= 5001:2:0 //Meridian 800  
dvEscF					= 5001:3:0 //Faroudja
dvEscD					= 5001:4:0 //DVDO

DEFINE_CONSTANT

//Relays

REL_LUZ						= 1	

//Escenas

BTN_ESC_TV					= 1
BTN_ESC_TV_CON_EQUIPOS	= 2
BTN_ESC_CINE				= 3
BTN_ESC_MUSICA				= 4

BTN_ESC_DLG_SI				= 32
BTN_ESC_DLG_NO				= 33

ESC_TV						= 1
ESC_TV_CON_EQUIPOS		= 2
ESC_CINE						= 3
ESC_MUSICA					= 4
ESC_NINGUNA					= 5

//Equipos

BTN_DEV_TV 					= 11 
BTN_DEV_IPLUS 				= 12 
BTN_DEV_DVD_V 				= 13
BTN_DEV_DVD_A 				= 14
BTN_DEV_BLURAY				= 15 
BTN_DEV_SAT 				= 16
BTN_DEV_VIDEO				= 17 
BTN_DEV_PC_AUX				= 18 
BTN_DEV_IPOD 				= 19
BTN_DEV_RADIO				= 20
BTN_DEV_CD					= 21


DEV_TV 						= 1
DEV_IPLUS 					= 2
DEV_DVD_V 					= 3
DEV_DVD_A 					= 4
DEV_BLURAY					= 5 
DEV_SAT 						= 6 
DEV_VIDEO					= 7 
DEV_PC_AUX					= 8 
DEV_IPOD						= 9 
DEV_RADIO					= 10 
DEV_CD						= 11
DEV_NINGUNO					= 12 

//Externals buttons

BTN_EXT_UP					= 31 
BTN_EXT_DOWN				= 32 
BTN_EXT_LEFT				= 33 
BTN_EXT_RIGHT				= 34 
BTN_EXT_SELECT				= 35 
BTN_EXT_RUEDA_UP			= 36
BTN_EXT_RUEDA_DOWN		= 37

//Estado proyector

PROY_CALENTANDO			= 1
PROY_ENFRIANDO				= 2
PROY_DISPONIBLE			= 3

//Tiempos

TIEMPO_ESPERA_PROYECTOR		= 300
TIEMPO_PANTALLA_UP_DOWN		= 450
TIEMPO_ESPERA_LUCES_CINE 	= 1000
TIEMPO_ARRANQUE_TV 			= 150 //a partir de aqui enviamos código para eliminar el OSD

//IU

//COLOR_BG_NO_SELECTED		= 'DarkAqua'
//COLOR_BG_SELECTED			= 'DarkRed'
COLOR_BG_NO_SELECTED		= 'Transparent'
COLOR_BG_SELECTED			= '#EFF4A0FF'


//Mandos

MANDO_MERIDIAN			= 1
MANDO_FAROUDJA			= 2
MANDO_FAROUDJA_PROY	= 3
MANDO_BLURAY			= 4
MANDO_IPLUS				= 5
MANDO_TV					= 6
MANDO_SONY				= 7
MANDO_NINGUNO			= 8

VOL_NORMAL				= 30
VOL_MIN					= 0


DEFINE_TYPE

structure tEstado
{
	 integer 	estadoProyector
	 integer 	escena
	 integer 	peticionEscena
	 integer 	device
	 integer 	init
	 integer 	vol
}

DEFINE_VARIABLE

//integer nivel
integer m_mando

char sEscenas[][50] =
{
	 'TV',
	 'TV con equipos',
	 'Cine',
	 'Musica',
	 'Ninguna'
}

char sDevices[][50] =
{
	 'TV',
	 'iPlus',
	 'DVD-V',
	 'DVD-A',
	 'Blu-Ray',
	 'Sat',
	 'Video',
	 'PC-Aux',
	 'iPod',
	 'Radio',
	 'CD',
	 'Ninguno'
}

char sSemanticas[][ 100 ] =
{
	 's01: descanso -> cine',
	 's02: descanso -> tv',
	 's03: descanso -> musica',
	 's04: cine -> cine -> apagar cine',
	 's05: cine -> tv',
	 's06: cine -> musica',
	 's07: tv -> cine',
	 's08: tv -> tv -> pagar tv',
	 's09: tv -> musica',
	 's10: musica -> cine',
	 's11: musica -> tv',
	 's12: musica -> musica -> apagar musica',
	 's13: descanso -> tv con equipos',
	 's14: cine -> tv con equipos',
	 's15: tv -> tv con equipos',
	 's16: musica -> tv con equipos',
	 's17: tv con equipos -> cine',
	 's18: tv con equipos -> tv',
	 's19: tv con equipos -> tv con equipos -> apagar tv con equipos',
	 's20: tv con equipos -> musica'
}

tEstado m_estado

//trozo de código recortado



DEFINE_VARIABLE //cuidadin que lo de arriba son solo constantes

//IR
include '_iBLURAY_Pioneer_BDP-LX70.axi'
include '_iSAT_iPlus.axi'
include '_iSAT_Pace_810.axi'
include '_iVIDEO_Sony.axi'
include '_iTV_Sony_KV-32FS60E.axi'
//RS-232
include '_rDVD_Meridian_800.axi'
include '_rESC_DVDO_iScanVP50Pro.axi'
include '_rESC_Faroudja_DVP-1080.axi'
include '_rPROC_Meridian_861.axi'
//
include '_MANDOS.axi'
//Touch panel
include '_TP_MVP5200.axi'

 
DEFINE_VARIABLE //hay que ponerlo porque '_rPROC_Lexicon_MC8.axi' acaba con la sección DEFINE_EVENT

//									 i+, Pace, DVD, BR, Video, Radio, iPod/Aux 	TV
integer aBtnVolDown[] 	= { 63, 113,  161, 211, 263, 	313, 		451,		713  }
integer aBtnVolMute[] 	= { 64, 114,  162, 212, 264, 	314, 		452,		714  }
integer aBtnVolUp[] 		= { 65, 115,  163, 213, 265, 	315, 		453,		715  }

integer aBtnExternalButtons[]  = 		
{
	 BTN_EXT_UP,
	 BTN_EXT_DOWN,
	 BTN_EXT_LEFT,
	 BTN_EXT_RIGHT,
	 BTN_EXT_SELECT
}


//--------------------------------- Escenas -------------------------------------------
integer aBtnEscena[]  = 		
{
	 BTN_ESC_TV,
	 BTN_ESC_TV_CON_EQUIPOS,
	 BTN_ESC_CINE,
	 BTN_ESC_MUSICA,
	 BTN_ESC_DLG_SI,
	 BTN_ESC_DLG_NO
}

integer aBtnDevice[]  = 		
{
	 BTN_DEV_TV,
	 BTN_DEV_IPLUS,
	 BTN_DEV_DVD_V,
	 BTN_DEV_DVD_A,
	 BTN_DEV_BLURAY,
	 BTN_DEV_SAT,
	 BTN_DEV_VIDEO,
	 BTN_DEV_PC_AUX,
	 BTN_DEV_IPOD,
	 BTN_DEV_RADIO,
	 BTN_DEV_CD
}

integer aDevice[]  = 		
{
	 DEV_TV,
	 DEV_IPLUS,
	 DEV_DVD_V,
	 DEV_DVD_A,
	 DEV_BLURAY,
	 DEV_SAT,
	 DEV_VIDEO,
	 DEV_PC_AUX,
	 DEV_IPOD,
	 DEV_RADIO,
	 DEV_CD
}
//------------------------------------------------------------------------------------------
define_function setMando( integer val ){ m_mando = val }
define_function integer isMando( integer val ){ if( m_mando == val ) return 1 else return 0 }
define_function integer getMando(){ return m_mando }
define_function incMando()
{ 
	 if( m_mando == MANDO_SONY )
		  m_mando = MANDO_MERIDIAN
	 else
		  m_mando = m_mando + 1 
}
define_function decMando()
{ 
	 if( m_mando == MANDO_MERIDIAN )
		  m_mando = MANDO_SONY
	 else
		  m_mando = m_mando - 1 
}
define_function showMando( integer val )
{ 
	 switch( val )
	 {
		  case MANDO_MERIDIAN:			{ showPage( '02-Mandos-Meridian' ) }
		  case MANDO_FAROUDJA:			{ showPage( '02-Mandos-Faroudja' ) }
		  case MANDO_FAROUDJA_PROY:	{ showPage( '02-Mandos-Faroudja-Proy' ) }
		  case MANDO_BLURAY:				{ showPage( '02-Mandos-BluRay' ) }
		  case MANDO_IPLUS:				{ showPage( '02-Mandos-iPlus' ) }
		  case MANDO_TV:					{ showPage( '02-Mandos-TV' ) }
		  case MANDO_SONY:				{ showPage( '02-Mandos-Sony' ) }
	 }
}
//------------------------------------------------------------------------------------------
define_function traza( char val[] ){ send_string 0, "val" }

define_function showPage( char val[] ){ 		send_command dvTp, "'PAGE-',val" }
define_function showPopup( char val[] )
{ 		
	 send_string 0, "'showPopup(',val,')'"
	 send_command dvTp, "'@PPN-',val" 
}
define_function hidePopup( char val[] )
{
	 send_string 0, "'hidePopup(',val,')'"
	 send_command dvTp, "'@PPF-',val" 
}
define_function hidePopupsP( char val[] ){ 	send_command dvTp, "'@PPA-',val" }	//de una pagina
define_function hidePopupsA(){ 					send_command dvTp, "'@PPX'" }			//de todas las páginas


define_function showDialogo( char message[] )
{ 
	 send_command dvTp, "'^TXT-31,0,', message"
	 showPopup( '10-Dialogos' )
}
define_function showMsg( char message[] )
{ 
	 //TODO: (1)Mensaje temporizado, (2)'2'¿?
	 send_command dvTp, "'^TXT-32,0,', message"
	 showPopup( '11-Mensajes' )
}
//------------------------------------------------------------------------------------------
define_function setVol( integer val ){ m_estado.vol = val }
define_function integer getVol(){ 		return m_estado.vol }
define_function decVol(){ 					m_estado.vol-- }
define_function incVol(){ 					m_estado.vol++ }
//------------------------------------------------------------------------------------------
define_function setInit( integer val ){ m_estado.init = val }
define_function integer isInit(){ if( m_estado.init == 1 ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function marcaDevice( integer val )
{
	 send_command 10001:1:0,"'^BMF-11.21,0,%CF',COLOR_BG_NO_SELECTED" //BTN_TDT..BTN_RADIO
	 
	 //send_string 0, "'^BMF-',itoa( aBtnDevice[ val ] ),',1,%CF',COLOR_BG_SELECTED"
	 send_command 10001:1:0,"'^BMF-',itoa( aBtnDevice[ val ] ),',1,%CF',COLOR_BG_SELECTED"
}

define_function showPopupDevice( integer val )
{ 
	 switch( val )
	 {
		  case DEV_TV:			{ showPopup( '02-TV' ) }
		  case DEV_IPLUS:		{ showPopup( '03-iPlus' ) }
		  case DEV_DVD_V:		{ showPopup( '05-DVD' ) }
		  case DEV_DVD_A:		{ showPopup( '05-DVD' ) }
		  case DEV_BLURAY:	{ showPopup( '06-BluRay' ) }
		  case DEV_SAT:		{ showPopup( '04-Pace' ) }
		  case DEV_PC_AUX:	{ showPopup( '09-PC-iPod' ) }
		  case DEV_IPOD:		{ showPopup( '09-PC-iPod' ) }
		  case DEV_VIDEO:		{ showPopup( '07-Video' ) }
		  case DEV_RADIO:		{ showPopup( '08-Radio' ) }
		  case DEV_CD:			{ showPopup( '05-DVD' ) }
	 }
}

define_function setDevice( integer val )
{ 
	 send_string 0, "'setDevice(',sDevices[ val ],') escena[', sEscenas[ getEscena() ],']'"

	 //setDeviceAnterior( m_estado.deviceAnterior  )
	 m_estado.device = val 

	 marcaDevice( val )

	 hidePopupsA() //FIXME: Si son de un mismo grupo y son excluyentes, en principio no haría falta
	 showPopupDevice( val )

	 // procesador -> audio; para las escenas con equipos: (1)cine, (2)tv con equipos y (3)musica
	 if( !isEscena( ESC_TV ) )
	 {
		  switch( val ) 
		  {
				case DEV_IPLUS:	{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_TAPE1 ] }
				case DEV_DVD_V:	{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_DVD ] }
				case DEV_DVD_A:	{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_LP ] }
				case DEV_BLURAY:	{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_TAPE2 ] }
				case DEV_SAT:		{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_CABLE ] }
				case DEV_VIDEO:	{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_VCR1 ] }
				case DEV_PC_AUX:	{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_VCR2 ] }		//ojito con esto, que el DVD no es el CD
				case DEV_IPOD:		{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_CDR ] }		//ojito con esto, que el DVD no es el CD
				case DEV_RADIO:	{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_TAPE1 ] } //la radio es los canales de radio del iPlus/TDT
				case DEV_CD:		{ send_string 	dvProc, sCmdProc[ CMD_PROC_SRC_CD ] }
		  }
	 }
	 
	 // video -> entradas del (1)escalador o bien (2) de la TV
	 switch( getEscena() ) 
	 {
		  case ESC_CINE:
		  {
				switch( val ) 
				{
					 case DEV_IPLUS:	{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI1 ]  }
					 case DEV_DVD_V:	{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI2 ]  }
					 case DEV_DVD_A:	{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI2 ]  }
					 case DEV_BLURAY:	{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI4 ]  }
					 case DEV_SAT:		{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI3 ]  }
					 //Esto irá cuando se solvente lo del Faroudja
					 //case DEV_VIDEO:	{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI1 ]  }
					 //case DEV_PC_AUX:	{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI1 ]  }
					 //case DEV_IPOD:	{ send_string 	dvEscD, 	sCmdEscD[ CMD_ESC_D_IN_HDMI1 ]  }
				}
		  }
		  case ESC_TV_CON_EQUIPOS:
		  case ESC_TV: //igual que para TV con equipos
		  {
				switch( val )
				{
					 case DEV_IPLUS:	{ Pulse[ dvTv, IR_TV_8 ]  }
					 case DEV_DVD_V:	{ Pulse[ dvTv, IR_TV_ENTRADA_VIDEO_3 ] }
					 case DEV_DVD_A:	{ Pulse[ dvTv, IR_TV_ENTRADA_VIDEO_3 ] }
					 //case DEV_BLURAY: {} //cuando se cambie la TV
					 case DEV_SAT:		{ Pulse[ dvTv, IR_TV_9 ]  }
					 case DEV_VIDEO: 	{ Pulse[ dvTv, IR_TV_ENTRADA_VIDEO_2 ] }
					 //case DEV_PC_AUX: //cuando tenga la TV de plasma
				}
				wait TIEMPO_ARRANQUE_TV Pulse[ dvTv, IR_TV_A4 ]  //Para quitar el OSD
		  }
	 }
	 
	 if( isDevice( DEV_RADIO ) )
	 {
		  //send_string 0, "'Ponemos el canal 243...'"
		  
		  Pulse[ dvPlus, IR_IPLUS_2 ]
		  wait 2
		  {
				Pulse[ dvPlus, IR_IPLUS_4 ]
				wait 2
					 Pulse[ dvPlus, IR_IPLUS_3 ]
		  }
	 }
}
define_function integer getDevice(){ return m_estado.device }
define_function integer isDevice( integer val ){ if( m_estado.device == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function marcaEscena( integer val )
{
	 //send_string- 0, "'marcaEscena(',sEscenas[val],')'"

	 send_command 10001:1:0,"'^BMF-1.4,0,%OP100'"

	 if( val != ESC_NINGUNA )
	 {
		  send_command 0,"'^BMF-',itoa(val),',1&2,%OP255'"
		  send_command 10001:1:0,"'^BMF-',itoa(val),',1&2,%OP255'"
	 }
}

define_function activaBotonesEscena( integer val ) //visible/no visible, enable/disable
{
	 //send_string 0, "'activaBotonesEscena(',sEscenas[val],')'"
	 send_command 10001:1:0,"'^BMF-11.21,0,%OP255%EN1'" //BTN_TDT..BTN_RADIO; todos (1)visibles, (2)enables
	 switch( val )
	 {
		  case ESC_TV:					{ send_command 10001:1:0,"'^BMF-13.15&18.21,0,%OP0%EN0'" } 	// Más adelante habrá quer activar el 13 (DVD-V), cuando tengamos un interruptor para parar las pantallas
		  case ESC_TV_CON_EQUIPOS:	{ send_command 10001:1:0,"'^BMF-11&15&18.21,0,%OP0%EN0'" } 			//
		  case ESC_CINE:				{ send_command 10001:1:0,"'^BMF-11&19.21,0,%OP0%EN0'" } 				//Sólo quitamos la radio
		  case ESC_MUSICA:			{ send_command 10001:1:0,"'^BMF-11.13&15.17,0,%OP0%EN0'" } 	//
		  case ESC_NINGUNA:			{ send_command 10001:1:0,"'^BMF-11.21,0,%OP0%EN0'" } 			//
	 }
	 //Botón vídeo
	 switch( val )
	 {
		  case ESC_TV:					{ send_command 10001:1:0,"'^TXT-17,0,Video'" }
		  case ESC_TV_CON_EQUIPOS:	{ send_command 10001:1:0,"'^TXT-17,0,Video/TV'" }
		  case ESC_CINE:				{ send_command 10001:1:0,"'^TXT-17,0,Video/TV'" }
	 }
	 
	 /*switch( val )
	 {
		  case ESC_CINE:				{ showPopup('02-Menu-TV-Equipos') }
		  case ESC_TV:					{ showPopup('02-Menu-TV') }
		  case ESC_TV_CON_EQUIPOS:	{ showPopup('02-Menu-Cine') }
		  case ESC_MUSICA:			{ showPopup('02-Menu-Musica') }
		  case ESC_NINGUNA:			{ showPopup('02-Menu-Ninguno') }
	 }*/
}

define_function setEscena( integer val )
{ 
	 send_string 0, "'setEscena(',sEscenas[val],')'"

	 m_estado.escena = val 
	 setPeticionEscena( ESC_NINGUNA )
	 marcaEscena( val )
	 activaBotonesEscena( val )
	 
	 //Default device
	 switch( val )
	 {
		  case ESC_TV:						setDevice( DEV_IPLUS )  		//muestra la pantalla que toca
		  case ESC_TV_CON_EQUIPOS:		setDevice( DEV_IPLUS )  		//muestra la pantalla que toca
		  case ESC_CINE: 					setDevice( DEV_DVD_V )
		  case ESC_MUSICA: 				setDevice( DEV_DVD_A ) 
		  case ESC_NINGUNA:				setDevice( DEV_NINGUNO ) 
	 }
		  
	 //Luces
	 /*switch( val )
	 {
		  case ESC_TV: 				{ doLutronPreset( LUT_PRESET_15 ) }
		  case ESC_TV_CON_EQUIPOS: { doLutronPreset( LUT_PRESET_15 ) }
		  case ESC_CINE:  			{ wait TIEMPO_ESPERA_LUCES_CINE doLutronPreset( LUT_PRESET_13 ) } //provando		
		  case ESC_MUSICA:			{ doLutronPreset( LUT_PRESET_14 ) }		
		  //case ESC_NINGUNA: 		{ doLutronPreset( LUT_PRESET_01 ) }
	 }*/
}

define_function integer getEscena(){ return m_estado.escena }
define_function integer isEscena( integer val ){ if( m_estado.escena == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setPeticionEscena( integer val ){ m_estado.peticionEscena = val }
define_function integer getPeticionEscena(){ return m_estado.peticionEscena }
define_function integer isPeticionEscena( integer val ){ if( m_estado.peticionEscena == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setEstadoProyector( integer val ){ m_estado.estadoProyector = val }
define_function integer getEstadoProyector(){ return m_estado.estadoProyector }
define_function integer isEstadoProyector( integer val ){ if( m_estado.estadoProyector == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function trazaEstado( char val[] )
{
	 char txt[ 50 ] 
	 
	 txt = 	"'[',val,']-E[', 	  sEscenas[ m_estado.escena ],'->',
										  sEscenas[ m_estado.peticionEscena ],']D[',
										  sDevices[ m_estado.device ],']'"
	 
	 /*txt = 	"'[',val,']-E[', 	  itoa( m_estado.escena ),'->',
										  itoa( m_estado.peticionEscena ),'] D[',
										  itoa( m_estado.device ),']'"*/

	 traza( txt )
}
//------------------------------------------------------------------------------------------
define_function volTVUp( /*integer val*/ )
{
	 Pulse[ 			dvTv, IR_TV_VOL_UP ]
	 wait 2 
	 {
		  incVol()
		  if( getVol() < VOL_NORMAL )
				volTVUp( /*getVol()*/ )
	 }
}
define_function volTVDown( /*integer val*/ )
{
	 Pulse[ 			dvTv, IR_TV_VOL_DOWN ]
	 wait 2 
	 {
		  decVol()
		  if( getVol() > VOL_MIN )
				volTVDown( /*getVol()*/ )
	 }
}


define_function doSemantica( integer val )
{
	 trazaEstado('doSemantica')
	 send_string 0, "'doSemantica(',sSemanticas[ val ],')'"

	 switch( val )
	 {
		  case 01: // descanso -> cine
		  {
				//Equipos
				Pulse[ 			dvPlus, 					IR_IPLUS_1 ]
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvBluRay, 				IR_BR_PLAY ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ]

				//send_string 	dvDVD, sCmdDVD[ 		CMD_PROC_SRC_DVD ] //ya me lo arranca el procesador 

				//Escalador-Procesador-Proyector
				send_string 	dvEscD, sCmdEscD[		CMD_ESC_D_ON ]

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_ON ] 
				setEstadoProyector( PROY_CALENTANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				send_string 	0,	"'Proc:',sCmdProc[ 	CMD_PROC_SRC_DVD ]" //entrada por defecto
				send_string 	dvProc,	sCmdProc[ 	CMD_PROC_SRC_DVD ] //entrada por defecto

				//Esc
				setEscena( ESC_CINE )
		  }
		  case 02: // descanso -> TV
		  {
				//Equipos
				Pulse[	dvPlus, 					IR_IPLUS_1 ]
				
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ]
				//Pulse[ 			dvBluRay, 				IR_BR_PLAY ] //cuando venga la TV nueva, lo descomentamos

				//send_string 	dvDVD, sCmdDVD[ 		CMD_DVD_STANDBY ] //lo arranca el procesador

				//TV -> On
				Pulse[ 			dvTv, 					IR_TV_1 ]

				//Procesador -> Lo arrancaremos en Enero para en DVD-V, cuando esté lo de los interruptores
				//send_string 	dvProc,	sCmdProc[ 	CMD_PROC_SRC_DVD ] //me arranca el procesador para arrancarme el DVD

				//Esc
				setEscena( ESC_TV )
		  }
		  case 03: // descanso -> musica
		  {
				//Procesador -> Primero al 861 (Procesador) y luego al 800 (DVD)
				send_string 	dvProc,	sCmdProc[ 	CMD_PROC_SRC_CD ] //me arranca el procesador para arrancarme el CD

				//Equipos
				Pulse[ 			dvPlus, 					IR_IPLUS_1 ]
				Pulse[ 			dvSat, 					IR_SAT_POWER ]

				send_string 	dvDVD, sCmdDVD[ 		CMD_DVD_STANDBY ] 

				//Esc
				setEscena( ESC_MUSICA )
		  }
		  case 04: // cine -> cine -> apagar cine
		  {
				//Equipos
				Pulse[ 			dvPlus, 					IR_IPLUS_POWER ]
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvBluRay, 				IR_BR_STANDBY_ON ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ]

				//send_string 	dvDVD, sCmdDVD[ 		CMD_DVD_STANDBY ] 

				//Escalador-Procesador-Proyector
				send_string 	dvEscD, sCmdEscD[		CMD_ESC_D_OFF ]

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_OFF ] 
				setEstadoProyector( PROY_ENFRIANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				send_string 	dvProc,	sCmdProc[ CMD_PROC_STANDBY ] //también se para el DVD

				//Esc
				setEscena( ESC_NINGUNA )

		  }
		  case 05: // cine -> tv
		  {
				//Equipos -> Paro el Blu-Ray

				//Escalador-Procesador-Proyector -> Off
				send_string 	dvEscD, sCmdEscD[		CMD_ESC_D_OFF ]

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_OFF ] 
				setEstadoProyector( PROY_ENFRIANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				//send_string 	dvProc,	sCmdProc[ 	CMD_PROC_STANDBY ] //no lo paro porque necesito el DVD

				//TV -> On
				Pulse[ 			dvTv, 					IR_TV_1 ]

				//Esc
				setEscena( ESC_TV )
		  }
		  case 06: // cine -> musica
		  {
				//Equipos
				Pulse[ 			dvVIDEO, 			IR_VD_POWER ] // ->Off
				Pulse[ 			dvBluRay, 			IR_BR_STANDBY_ON ] //Off
				Pulse[ 			dvSat, 				IR_SAT_POWER ] //Off

				//Escalador-Proyector
				send_string 	dvEscD, sCmdEscD[		CMD_ESC_D_OFF ]

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_OFF ] 
				setEstadoProyector( PROY_ENFRIANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				//Esc
				setEscena( ESC_MUSICA )
		  }
		  case 07: // tv -> cine
		  {
				//Equipos
				
				//Escalador-Proyector -> On
				send_string 	dvEscD, sCmdEscD[ 	CMD_ESC_D_ON ] 

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_ON ] 
				setEstadoProyector( PROY_CALENTANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				send_string 	dvProc,	sCmdProc[ 	CMD_PROC_SRC_DVD ] //arrancada del procesador

				//TV -> Off
				Pulse[ 			dvTv, 					IR_TV_TV ] //Para la TV

				//Esc
				setEscena( ESC_CINE )
		  }
		  case 08: // tv -> tv -> apagar tv
		  {
				//Equipos -> Off
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvPlus, 					IR_IPLUS_POWER ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] // ->Off

				//send_string 	dvDVD, sCmdDVD[ 		CMD_DVD_STANDBY ] 

				//Procesador -> Lo pararemos cuando lo arranquemos, en Enero, cuando esté el switch de las pantallas
				//send_string 	dvProc,	sCmdProc[ 	CMD_PROC_STANDBY ]

				//TV -> Off
				Pulse[ 			dvTv, 					IR_TV_TV ] //Para la TV

				//Esc
				setEscena( ESC_NINGUNA )
		  }
		  case 09: // tv -> musica
		  {
				//Equipos -> Off
				Pulse[ 			dvSat, 					IR_SAT_POWER ]		// ->Off
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] 		// ->Off
				//Pulse[ 			dvBluRay, 				IR_BR_STANDBY_ON ] // ->Off

				//Procesador: ya lo tengo arrancadao de TV

				//Procesador -> On; ya me arranca el DVD
				//send_string 	dvProc,	sCmdProc[ 	CMD_PROC_SRC_DVD ]
				
				//DVD - Meriadian 800 -> On
				//send_string 	dvDVD, sCmdDVD[ 		CMD_DVD_STANDBY ] 

				//TV -> Off
				Pulse[ 			dvTv, 					IR_TV_TV ]

				//Esc
				setEscena( ESC_MUSICA )
		  }
		  case 10: // musica -> cine
		  {
				//Equipos -> On
				Pulse[ 			dvSat, 					IR_SAT_POWER ]	// ->On
				Pulse[ 			dvBluRay, 				IR_BR_PLAY ]	// ->On
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] 	// ->On

				//Escalador-Proyector -> On
				send_string 	dvEscD, sCmdEscD[ 	CMD_ESC_D_ON ] 

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_ON ] 
				setEstadoProyector( PROY_CALENTANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				//Esc
				setEscena( ESC_CINE )
		  }
		  case 11: // musica -> tv
		  {
				//Equipos
				Pulse[ 			dvSat, 					IR_SAT_POWER ]	// ->On
				//Pulse[ 			dvBluRay, 				IR_BR_PLAY ]	// ->On
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] 	// ->On

				//Procesador, no la paro, necesito el DVD
				
				//TV -> On
				Pulse[ 			dvTv, 					IR_TV_1 ]

				setEscena( ESC_TV )
		  }
		  case 12: // musica -> musica -> apagar musica
		  {
				//Equipos -> Off
				Pulse[ 			dvPlus, 					IR_IPLUS_POWER ]

				//Procesador -> Off
				send_string 	dvProc,	sCmdProc[ 	CMD_PROC_STANDBY ] //ya para el DVD

				setEscena( ESC_NINGUNA )
		  }
		  case 13: // descanso -> tv con equipos
		  {
				//Equipos -> On
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvPlus, 					IR_IPLUS_1 ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] 
				//Pulse[ 			dvBluRay, 				IR_BR_PLAY ]	// ->On; de momento, hasta la TV nueva, inhabilitado

				//send_string 	dvDVD, sCmdDVD[ 		CMD_DVD_STANDBY ] 

				//Procesador
				send_string 	dvProc,	sCmdProc[ 	CMD_PROC_SRC_DVD ] //necesito el DVD

				//TV -> On
				Pulse[ 			dvTv, 					IR_TV_1 ]

				//Esc
				setEscena( ESC_TV_CON_EQUIPOS )
		  }
		  case 14: // cine -> tv con equipos
		  {
				//Equipos

				//Escalador-Proyector: Off
				send_string 	dvEscD, sCmdEscD[ 	CMD_ESC_D_OFF ] 

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_OFF ] 
				setEstadoProyector( PROY_ENFRIANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				//Procesador -> No pararlo, necesitamos el DVD

				//TV -> On
				Pulse[ 			dvTv, 					IR_TV_1 ]

				//Esc
				setEscena( ESC_TV_CON_EQUIPOS )
		  }
		  case 15: // tv -> tv con equipos
		  {
				integer i
				//Equipos

				//Procesador -> Ya lo tenemos arrancado
				//send_string 	dvProc,	sCmdProc[ 	CMD_PROC_STANDBY ]

				//TV
				//(1)Hacer el mute de la TV o (2)bajar el volumen a '0'
				//volTV( 2, IR_TV_VOL_DOWN )
				volTVDown()
				setEscena( ESC_TV_CON_EQUIPOS )
		  }
		  case 16: // musica -> tv con equipos
		  {
				//Equipos
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] 
				//Pulse[ 			dvBluRay, 				IR_BR_PLAY ]	// ->On

				//TV -> On
				Pulse[ 			dvTv, 					IR_TV_1 ]

				//Esc
				setEscena( ESC_TV_CON_EQUIPOS )
		  }
		  case 17: // tv con equipos -> cine
		  {
				//Equipos

				//TV -> Off
				//volTV( 2, IR_TV_VOL_UP )
				//volTVUp()
				wait 40 Pulse[ 			dvTv, 					IR_TV_TV ]

				//Escalador-Proyector -> On
				send_string 	dvEscD, sCmdEscD[ 	CMD_ESC_D_ON ] 

				send_string 	dvEscF, sCmdEscF[ 	CMD_ESC_F_ON ] 
				setEstadoProyector( PROY_CALENTANDO )
				wait TIEMPO_ESPERA_PROYECTOR
					 setEstadoProyector( PROY_DISPONIBLE )

				//Esc
				setEscena( ESC_CINE )
		  }
		  case 18: // tv con equipos -> tv
		  {
				integer i
				//Equipos

				//Procesador
				send_string 	dvProc,	sCmdProc[ 	CMD_PROC_STANDBY ]

				//TV -> Restaurar el volumen
				//volTV( 2, IR_TV_VOL_UP )
				volTVUp()
				//Esc
				setEscena( ESC_TV )
		  }
		  case 19: // tv con equipos -> tv con equipos -> apagar tv con equipos
		  {
				//Equipos -> Off
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvPlus, 					IR_IPLUS_POWER ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] 
				//Pulse[ 			dvBluRay, 				IR_BR_STANDBY_ON ]

				//Procesador, escalador
				send_string 	dvProc,	sCmdProc[ 	CMD_PROC_STANDBY ] // Ya me para también el DVD

				//TV -> Off
				//volTV( 2, IR_TV_VOL_UP )
				//volTVUp()
				wait 40 Pulse[ 			dvTv, 					IR_TV_TV ]

				//Esc
				setEscena( ESC_NINGUNA )
		  }
		  case 20: // tv con equipos -> musica
		  {
				//Equipos -> Off, todos menos el iPlus (que tiene las emisoras de radio)
				Pulse[ 			dvSat, 					IR_SAT_POWER ]
				Pulse[ 			dvVIDEO, 				IR_VD_POWER ] 
				//Pulse[ 			dvBluRay, 				IR_BR_STANDBY_ON ]

				//TV -> Off
				//volTV( 2, IR_TV_VOL_UP )
				//volTVUp()
				wait 40 Pulse[ 			dvTv, 					IR_TV_TV ]

				//Esc
				setEscena( ESC_MUSICA )
		  }
	 }
}
//------------------------------------------------------------------------------------------
DEFINE_START

	 send_string 0, "'DEFINE_START'"

	 setInit( 1 )

	 //configBotones()
	 //showPage( 					'01-Principal' ) //no siempre va; tal vez desde online del mando

	 send_command dvEscF,		'SET BAUD 19200,N,8,1' 		//Faroudja MVP-1080, cable directo, como los de Meridian
	 send_command dvEscD,		'SET BAUD 19200,N,8,1' 		//DVDO VP40, cable cruzado
	 send_command dvProc,		'SET BAUD 9600,N,8,1'		//Meridian 800, cable directo
	 send_command dvDVD,			'SET BAUD 9600,N,8,1'		//Meridian 861, cable directo


DEFINE_EVENT


//-----------------------------------------------------------------------
button_event[ dvTp, aBtnEscena ] //(1)Escenas (2)Si/No (3)Luces/Motores
//-----------------------------------------------------------------------
{
   push:
   {
		  local_var btn
		  btn = get_last( aBtnEscena )

		  //trazaEstado('BtnEscena')

		  //send_string 0, "'aBtnEscena[', itoa(btn),'][',itoa( aBtnEscena[ btn ] ),']'"

		  switch( aBtnEscena[ btn ] )
		  {
				//-----------------
				case BTN_ESC_CINE:
				//-----------------
				{
					 setPeticionEscena( ESC_CINE )

					 switch( getEscena() )
					 {
						  case ESC_NINGUNA:	//descanso -> tv
						  {
								if( isEstadoProyector( PROY_ENFRIANDO ) )
									 showMsg('Proyector enfriando...aún no se puede arrancar la sesión de cine')
								else
									 doSemantica( 01 ) 
						  } // descanso -> cine
						  case ESC_CINE:		// cine -> descanso
						  { 
								if( isEstadoProyector( PROY_CALENTANDO ) )
									 showMsg('Proyector calentándose...aún no se puede abandonar la sesión de cine')
								else
									 showDialogo('¿Seguro de abandonar escena de cine?') 
						  }
						  case ESC_TV:		
						  {
								if( isEstadoProyector( PROY_ENFRIANDO ) )
									 showMsg('Proyector enfriándose...aún no se puede iniciar una nueva sesión de cine')
								else
									 showDialogo('¿Seguro de abandonar escena de TV?') 
						  }
						  case ESC_TV_CON_EQUIPOS:		
						  {
								if( isEstadoProyector( PROY_ENFRIANDO ) )
									 showMsg('Proyector enfriándose...aún no se puede iniciar una nueva sesión de cine')
								else
									 showDialogo('¿Seguro de abandonar escena de TV con equipos?') 
						  }
						  case ESC_MUSICA:	{ showDialogo('¿Seguro de abandonar escena de música?') }
					 }
				}
				//-----------------
				case BTN_ESC_TV:
				//-----------------
				{
					 setPeticionEscena( ESC_TV )

					 switch( getEscena() )
					 {
						  case ESC_NINGUNA:			{ doSemantica( 02 ) } // descanso -> TV
						  case ESC_CINE:		
						  { 
								if( isEstadoProyector( PROY_CALENTANDO ) )
									 showMsg('Proyector calentándose...aún no se puede abandonar la sesión de cine')
								else
									 showDialogo('¿Seguro de abandonar escena de cine?') 
						  }
						  case ESC_TV:					{ showDialogo('¿Seguro de abandonar escena de TV?') }
						  case ESC_TV_CON_EQUIPOS:	{ showDialogo('¿Seguro de abandonar escena de TV con equipos?') }
						  case ESC_MUSICA:			{ showDialogo('¿Seguro de abandonar escena de música?') }
					 }
				}
				//-----------------
				case BTN_ESC_TV_CON_EQUIPOS:
				//-----------------
				{
					 setPeticionEscena( ESC_TV_CON_EQUIPOS )

					 switch( getEscena() )
					 {
						  case ESC_NINGUNA:			{ doSemantica( 13 ) } 	// descanso -> TV con equipos
						  case ESC_TV_CON_EQUIPOS:	{ showDialogo('¿Seguro de abandonar escena de TV con equipos?') }
						  case ESC_CINE:		
						  { 
								if( isEstadoProyector( PROY_ENFRIANDO ) )
									 showMsg('Proyector enfriándose...aún no se puede iniciar la sesión de cine')
								else
									 showDialogo('¿Seguro de abandonar escena de cine con equipos?') 
						  }
						  case ESC_TV:					{ showDialogo('¿Seguro de abandonar escena de TV?') }
						  case ESC_MUSICA:			{ showDialogo('¿Seguro de abandonar escena de música?') }
					 }
				}
				//-----------------
				case BTN_ESC_MUSICA:
				//-----------------
				{
					 setPeticionEscena( ESC_MUSICA )

					 switch( getEscena() )
					 {
						  case ESC_NINGUNA:			{ doSemantica( 03 ) } // descanso -> musica
						  case ESC_CINE:		
						  { 
								if( isEstadoProyector( PROY_CALENTANDO ) )
									 showMsg('Proyector calentándose...aún no se puede abandonar la sesión de cine')
								else
									 showDialogo('¿Seguro de abandonar escena de cine?') 
						  }
						  case ESC_TV:					{ showDialogo('¿Seguro de abandonar escena de TV?') }
						  case ESC_TV_CON_EQUIPOS:	{ showDialogo('¿Seguro de abandonar escena de TV con equipos?') }
						  case ESC_MUSICA:			{ showDialogo('¿Seguro de abandonar escena de música?') }
					 }
				}					 
				//-----------------
				case BTN_ESC_DLG_SI:
				//-----------------
				{
					 switch( getEscena() )
					 {
						  case ESC_CINE:		
						  {
								switch( getPeticionEscena( ) )
								{
									 case ESC_CINE:				{ doSemantica( 04 ) }	// cine -> cine -> apagar cine
									 case ESC_TV:	  				{ doSemantica( 05 ) } // cine -> tv
									 case ESC_TV_CON_EQUIPOS:	{ doSemantica( 14 ) } // cine -> tv con equipos
									 case ESC_MUSICA:				{ doSemantica( 06 ) } // cine -> musica	
								}
						  }
						  case ESC_TV:		
						  {
								switch( getPeticionEscena( ) )
								{
									 case ESC_CINE:				{ doSemantica( 07 ) } 	// tv -> cine
									 case ESC_TV:					{ doSemantica( 08 ) }	// tv -> tv -> apagar tv
									 case ESC_TV_CON_EQUIPOS:	{ doSemantica( 15 ) }	// tv -> tv con equipos
									 case ESC_MUSICA:				{ doSemantica( 09 ) }	// tv -> musica
								}
						  }
						  case ESC_TV_CON_EQUIPOS:		
						  {
								switch( getPeticionEscena( ) )
								{
									 case ESC_CINE:				{ doSemantica( 17 ) } 	// tv con equipos -> cine
									 case ESC_TV:					{ doSemantica( 18 ) }	// tv con equipos -> tv
									 case ESC_TV_CON_EQUIPOS:	{ doSemantica( 19 ) }	// tv con equipos -> tv con equipos -> apagar tv con equipos
									 case ESC_MUSICA:				{ doSemantica( 20 ) }	// tv con equipos -> musica
								}
						  }
						  case ESC_MUSICA:		
						  {
								switch( getPeticionEscena( ) )
								{
									 case ESC_CINE:				{ doSemantica( 10 ) } 	// musica -> cine
									 case ESC_TV:					{ doSemantica( 11 ) }	// musica -> tv
									 case ESC_TV_CON_EQUIPOS:	{ doSemantica( 16 ) }	// musica -> tv con equipos
									 case ESC_MUSICA:				{ doSemantica( 12 ) }	// musica -> musica -> apagar musica
								}
						  }
					 }
				}
				//-----------------
				case BTN_ESC_DLG_NO:
				//-----------------
				{
					 //hidePopup('10-Dialogos') //ya lo hace el setDevice
					 setDevice( getDevice() )
				}

		  }//switch
   }
}

//-----------------------------------------------------------------------
button_event[ dvTp, aBtnDevice ]
//-----------------------------------------------------------------------
{
	 //Esto ponerlo igual que arriba, que se ve más claro
	 push:
	 {
		  local_var btn
		  btn = aDevice[ get_last( aBtnDevice ) ]

		  trazaEstado('BtnDevice')

		  setDevice( btn )
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, aBtnVolUp ]
//-----------------------------------------------------------------------
{
	 push:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				case ESC_MUSICA:			{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				case ESC_TV_CON_EQUIPOS:{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_UP ] }
		  }
	 }
	 hold[ 2, repeat ]:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				case ESC_MUSICA:			{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				case ESC_TV_CON_EQUIPOS:{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_UP ] }
		  }
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, aBtnVolDown ]
//-----------------------------------------------------------------------
{
	 push:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_DOWN ] }
				case ESC_MUSICA:			{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_DOWN ] }
				case ESC_TV_CON_EQUIPOS:{ send_string dvProc, sCmdProc[	CMD_PROC_VOL_DOWN ] }
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_DOWN ] }
		  }
	 }
	 hold[ 2, repeat ]: //cuando se mantiene la tecla pulsada, forzamos a que cada 0.5 se envíe el cmd  
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_DOWN ] }
				case ESC_MUSICA:			{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_DOWN ] }
				case ESC_TV_CON_EQUIPOS:{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_DOWN ] }
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_DOWN ] }
		  }
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, aBtnVolMute ]
//-----------------------------------------------------------------------
{
	 push:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				{ send_string dvProc, sCmdProc[ 	CMD_PROC_MUTE ] }
				case ESC_MUSICA:			{ send_string dvProc, sCmdProc[ 	CMD_PROC_MUTE ] }
				case ESC_TV_CON_EQUIPOS:{ send_string dvProc, sCmdProc[ 	CMD_PROC_MUTE ] }
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_MUTE ] }
		  }
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, aBtnExternalButtons ]
//-----------------------------------------------------------------------
{
	 hold[ 10 ]:
	 {
		  local_var index, btn
		  index = get_last( aBtnExternalButtons ) //¿te da el orden, no el valor, verdad?
		  btn = aBtnExternalButtons[ index ]
		  
		  send_string 0, "'aBtnExternalButtons[', itoa( btn ),']'"
		  
		  switch( btn )
		  {
				case BTN_EXT_UP:		
				{ 
					 if( isMando( MANDO_NINGUNO ) )
					 {
						  setMando( MANDO_MERIDIAN )
						  showMando( getMando() )
					 }
					 else
					 {
						  setMando( MANDO_NINGUNO )
						  showPage( '01-General' ) 
					 }
				}
				/*case BTN_EXT_DOWN:	
				{ 
					 setMando( MANDO_NINGUNO )
					 showPage( '01-General' ) 
				}*/
		  }
	 }
	 push:
	 {
		  local_var index, btn
		  index = get_last( aBtnExternalButtons ) //¿te da el orden, no el valor, verdad?
		  btn = aBtnExternalButtons[ index ]
		  
		  send_string 0, "'aBtnExternalButtons[', itoa( btn ),']'"
		  
		  switch( btn )
		  {
				case BTN_EXT_RUEDA_UP:
				{
					 send_string 0, "'BTN_EXT_RUEDA_UP'"
				}
				case BTN_EXT_RUEDA_DOWN:
				{
					 send_string 0, "'BTN_EXT_RUEDA_DOWN'"
				}
				case BTN_EXT_UP:
				{
					 if( !isMando( MANDO_NINGUNO ) )
					 {
						  incMando()
						  showMando( getMando() )
					 }
					 else
					 {
						  switch( getDevice() )
						  {
								case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_UP ] }
								case DEV_DVD_V:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_UP ] }
								case DEV_DVD_A:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_UP ]  }
								case DEV_CD:			{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_UP ]  }
								case DEV_BLURAY:		{ Pulse[ 		dvBluRay, 			IR_BR_UP ] }
								case DEV_SAT:			{ Pulse[ 		dvSat, 				IR_SAT_UP ] }
								//case DEV_VIDEO:		{ Pulse[ 		dvBluRay, 			IR_BR_UP ] }
						  }
					 }
				}
				case BTN_EXT_DOWN:
				{
					 if( !isMando( MANDO_NINGUNO ) )
					 {
						  decMando()
						  showMando( getMando() )
					 }
					 else
					 {
						  switch( getDevice() )
						  {
								case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_DOWN ] }
								case DEV_DVD_V:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_DOWN ] }
								case DEV_DVD_A:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_DOWN ] }
								case DEV_CD:			{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_DOWN ] }
								case DEV_BLURAY:		{ Pulse[ 		dvBluRay, 			IR_BR_DOWN ] }
								case DEV_SAT:			{ Pulse[ 		dvSat, 				IR_SAT_DOWN ] }
								//case DEV_VIDEO:		{ Pulse[ 	dvBluRay, 			IR_BR_DOWN ] }
						  }
					 }
				}
				case BTN_EXT_LEFT:
				{
					 switch( getDevice() )
					 {
						  case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_LEFT ] }
						  case DEV_DVD_V:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_LEFT ] }
						  case DEV_DVD_A:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_LEFT ] }
						  case DEV_CD:			{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_LEFT ] }
						  case DEV_BLURAY:	{ Pulse[ 		dvBluRay, 			IR_BR_LEFT ] }
						  case DEV_SAT:		{ Pulse[ 		dvSat, 				IR_SAT_LEFT ] }
						  //case DEV_VIDEO:	{ Pulse( dvDVD, IR_SAT_CURSOR_UP ) }
					 }
				}
				case BTN_EXT_RIGHT:
				{
					 switch( getDevice() )
					 {
						  case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_RIGHT ] }
						  case DEV_DVD_V:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_RIGHT ] }
						  case DEV_DVD_A:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_RIGHT ] }
						  case DEV_CD:			{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_RIGHT ] }
						  case DEV_BLURAY:	{ Pulse[ 		dvBluRay, 			IR_BR_RIGHT ] }
						  case DEV_SAT:		{ Pulse[ 		dvSat, 				IR_SAT_RIGHT ] }
						  //case DEV_VIDEO:	{ Pulse[ 		dvBluRay, 			IR_BR_RIGHT ] }
					 }
				}
				case BTN_EXT_SELECT:
				{
					 switch( getDevice() )
					 {
						  case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_OK ] }
						  case DEV_DVD_V:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_ENTER ] }
						  case DEV_DVD_A:		{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_ENTER ] }
						  case DEV_CD:			{ send_string 	dvProc, sCmdDVD[ 	CMD_DVD_ENTER ] }
						  case DEV_BLURAY:	{ Pulse[ 		dvBluRay,			IR_BR_ENTER ] }
						  //case DEV_SAT:		{ Pulse[ 		dvSat, 				IR_SAT_OK ] } //¿no está capturada?
						  //case DEV_VIDEO:	{ Pulse[ 		dvBluRay,			IR_BR_SELECT ] }
					 }
				}
		  }//switch
	 }//push
}//button_event


level_event[ dvTp, BTN_EXT_RUEDA_UP ]
{
	 send_string 0, "'level-up'"
	 //level.value
}
level_event[ dvTp, BTN_EXT_RUEDA_DOWN ]
{
	 send_string 0, "'level-down'"
	 //level.value
}

DEFINE_PROGRAM
