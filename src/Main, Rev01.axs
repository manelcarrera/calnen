PROGRAM_NAME='LluisColl-v02'

//escena tv apagar meridian
//escena tv amb equipament mirar volum tele
//canal plus memories
//camara: meridian 72351 hdmi4 meridian hd621 input 3
 
DEFINE_DEVICE

//Panel
dvTp1					= 10001:1:0
dvTp2					= 10002:1:0

//IR
dvTV					= 5001:9:0	//TV
dvPlus					= 5001:11:0	//iPlus
dvMotor					= 5001:13:0	// LAVA, mmotion

//RS232
dvProc					= 5001:1:0 //Meridian 861
dvDVD					= 5001:2:0 //Meridian 800  
dvProy					= 5001:3:0 //Proyector Faroudja
dvKramer				= 5001:4:0	
dvBluRay				= 5001:6:0	//OPPO BDP-95EU 

//Relays
dvRelays				= 5001:8:0
dvIOs					= 5001:17:0 

DEFINE_CONSTANT


MAX_LEVEL_VOL			= 10

//Relays

REL_FLEXO_PANTALLA_DOWN	= 1

REL_EQUIPOS					= 2	//BluRay, HD621, Esc Meridian 2351, LyngBox, modulador LyngBox
REL_IPLUS					= 3 	//iPlus, modulador, telefono, selector HDMI
REL_MERIDIAN				= 4
REL_PROYECTOR				= 5
REL_TV						= 6
REL_SERV_CONT				= 7	//video
REL_PANTALLAS_SUBWOOFER		= 8

IO_LUZ_UP					= 1
IO_LUZ_DOWN					= 2
IO_RESET_PLUS				= 3
IO_LUZ_GENERAL				= 4

REL_OFF						= 0
REL_ON						= 1

//Netlinx, no hago nada, va a través de la llave


//Escenas

BTN_ESC_TV					= 1
BTN_ESC_TV_CON_EQUIPOS		= 2
BTN_ESC_CINE				= 3
BTN_ESC_MUSICA				= 4
BTN_ESC_LUZ					= 5
BTN_ESC_DLG_SI				= 6
BTN_ESC_DLG_NO				= 7

BTN_GEN_TV_ABRIR			= 8
BTN_GEN_TV_SALIR			= 9
BTN_GEN_DSP_SALIR			= 10

//BTN_GEN_PROY_ABRIR			= 790
//BTN_GEN_PROY_SALIR			= 791


BTN_GEN_FORMATO2			= 799
BTN_GEN_FORMATO_PROY		= 798

ESC_TV						= 1
ESC_TV_CON_EQUIPOS			= 2
ESC_CINE					= 3
ESC_MUSICA					= 4
ESC_NINGUNA					= 5

//Equipos

BTN_DEV_TV 					= 11 // No
BTN_DEV_IPLUS 				= 12 
BTN_DEV_DVD_V 				= 13 // No
BTN_DEV_DVD_A 				= 14
BTN_DEV_BLURAY				= 15 
BTN_DEV_SAT 				= 16 // No
BTN_DEV_VIDEO				= 17 // No
BTN_DEV_PC					= 18 // No
BTN_DEV_CAM					= 19 // No
BTN_DEV_IPOD 				= 20 // No
BTN_DEV_RADIO				= 21 // No
BTN_DEV_CD					= 22 // No
// added in 2019
BTN_DEV_APPLE				= 23
BTN_DEV_CHROMECAST			= 24

DEV_TV 						= 1
DEV_IPLUS 					= 2
DEV_DVD_V 					= 3
DEV_DVD_A 					= 4
DEV_BLURAY					= 5 
DEV_SAT 					= 6 
DEV_VIDEO					= 7 
DEV_PC						= 8 
DEV_CAM						= 9 
DEV_IPOD					= 10 
DEV_RADIO					= 11 
DEV_CD						= 12
DEV_APPLE					= 13
DEV_CHROMECAST				= 14
DEV_NINGUNO					= 15 

//Externals buttons

BTN_EXT_UP					= 31 
BTN_EXT_DOWN				= 32 
BTN_EXT_LEFT				= 33 
BTN_EXT_RIGHT				= 34 
BTN_EXT_SELECT				= 35 
BTN_EXT_RUEDA_UP			= 36
BTN_EXT_RUEDA_DOWN			= 37

BTN_LUZ_UP					= 850
BTN_LUZ_DOWN				= 851

//Estado proyector

PROY_CALENTANDO				= 1
PROY_ENFRIANDO				= 2
PROY_DISPONIBLE				= 3

//Tiempos

TIEMPO_ESPERA_PROYECTOR		= 900 //2min. (1)proteccion de la bombeta, (2) apagada de llums
TIEMPO_PANTALLA_UP_DOWN		= 450
TIEMPO_ESPERA_LUCES_CINE 	= 100
//TIEMPO_ARRANQUE_TV 			= 150 //a partir de aqui enviamos código para eliminar el OSD

TIEMPO_ENCENDIDO_EQ			= 10
TIEMPO_RAMPA_LUCES			= 60

TIEMPO_PLUS						= 750 //1m15s.

TIEMPO_RETARDO_TV_OFF		= 250 //25s
TIEMPO_RETARDO_PROY_OFF		= 1200 //22s, de 15s a 22s

//IU

//COLOR_BG_NO_SELECTED		= 'DarkAqua'
//COLOR_BG_SELECTED			= 'DarkRed'

BITMAP_DEV_NO_SELECTED	= 'selector de aparato1_142x34.png'
BITMAP_DEV_SELECTED		= 'selector de aparato2_142x34.png'

BITMAP_ESC_NO_SELECTED	= 'botonmenu1.png'
BITMAP_ESC_SELECTED		= 'botonmenu2.png'

VOL_NORMAL				= 20 //estaba a 30 y parecia demasiado
VOL_MIN					= 0

BTN_VOL_MUTE			= 64
BTN_VOL_DOWN			= 63
BTN_VOL_UP				= 65


IPLUS_PARADO			= 1
IPLUS_ARRANCANDO		= 2
IPLUS_ENCENDIDO		= 3

DEFINE_TYPE

structure tEstado
{
	 integer 	estadoProyector
	 integer 	ordenProyector
	 integer 	escena
	 integer 	escenaAnterior
	 integer 	peticionEscena
	 integer 	device
	 integer 	init
	 integer 	vol
	 integer 	formato
	 integer 	formatoP
	 integer 	level
	 integer 	emisora
	 integer 	estadoLyngBox
	 integer 	estadoPlus
	 integer 	pantallaTV
	 integer 	grupoCanales
}

DEFINE_VARIABLE

//integer nivel
integer m_mandofDE

DEV dvTp[2] = {dvTp1, dvTp2}

char sRelays[][50] =
{
	 'REL_FLEXO_PANTALLA_DOWN',
	 'REL_EQUIPOS',
	 'REL_IPLUS',
	 'REL_MERIDIAN',
	 'REL_PROYECTOR',
	 'REL_TV',
	 'REL_SERV_CONT',
	 'REL_PANTALLAS_SUBWOOFER'
}


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

include '_Colas.axi'

// IR : 3x
include '_iSAT_iPlus.axi'
include '_iTV_Panasonic_TX-P42GT50E.axi'
include '_iMotor_LAVA_mmotion.axi'

// RS-232 : 5x
include '_rESC_Kramer_VP734.axi'
include '_rPROC_Meridian_861.axi'
include '_rPROY_JVC_Dila'
include '_rBLURAY_OPPO_BDP95EU.axi'
include '_rDVD_Meridian_800.axi'

//
include '_MANDOS.axi'
//Touch panel
include '_TP_MVP5200.axi'

 
DEFINE_VARIABLE //hay que ponerlo porque '_rPROC_Lexicon_MC8.axi' acaba con la sección DEFINE_EVENT

integer aBtnExternalButtons[]  = 		
{
	 BTN_EXT_UP,
	 BTN_EXT_DOWN,
	 BTN_EXT_LEFT,
	 BTN_EXT_RIGHT,
	 BTN_EXT_SELECT
}

//Para bajar y subir las luces en sesión de cine
integer aBtnStop[]  = 		
{
	 BTN_BR_STOP,
	 BTN_IPLUS_STOP,
	 //BTN_SAT_STOP,
	 BTN_DVD_STOP
}
integer aBtnPause[]  = 		
{
	 BTN_BR_PAUSE,
	 BTN_IPLUS_PAUSE,
	 //BTN_SAT_PAUSE,
	 BTN_DVD_PAUSE
}
integer aBtnPlay[]  = 		
{
	 BTN_BR_PLAY,
	 BTN_IPLUS_PLAY,
	 //BTN_SAT_PLAY,
	 BTN_DVD_PLAY
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
	 BTN_DEV_PC,
	 BTN_DEV_CAM,
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
	 DEV_PC,
	 DEV_CAM,
	 DEV_IPOD,
	 DEV_RADIO,
	 DEV_CD
}

tCola cRelays

//------------------------------------------------------------------------------------------
define_function traza( char val[] ){ send_string 0, "val" }

define_function showPage( char val[] ){ 		send_command dvTp, "'PAGE-',val" }
define_function showPopup( char val[] )
{ 		
	 send_string 0, "'showPopup(',val,')'"
	 
	 //send_command dvTp, "'@PPT-',val,';20'" 
	 send_command dvTp, "'@PPN-',val" 
}
/*define_function showPopupTempo( char val[], integer timeout )
{ 		
	 send_string 0, "'showPopupTempo(',val,')'"
	 send_string 0, "'@PPT-',val,';', itoa( timeout )" 

	 send_command dvTp, "'^TXT-33,0,', message"
	 send_command dvTp, "'@PPT-',val,';', itoa( timeout )" 
	 send_command dvTp, "'@PPN-',val" 
}*/
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
define_function showMsgTempo( char message[], integer timeout )
{ 
	 send_string 0, "'showMsgTempo(', message, ',', itoa( timeout ),')'"

	 send_command dvTp, "'^TXT-33,0,', message"
	 send_command dvTp, "'@PPT-14-MensajeModal;', itoa( timeout )" 

	 showPopup( '14-MensajeModal' )
}
//------------------------------------------------------------------------------------------
define_function setVol( integer val ){ m_estado.vol = val }
define_function integer getVol(){ 		return m_estado.vol }
define_function decVol(){ 					m_estado.vol-- }
define_function incVol(){ 					m_estado.vol++ }
//------------------------------------------------------------------------------------------
define_function setEmisora( integer val ){ m_estado.emisora = val }
define_function integer getEmisora(){ 		return m_estado.emisora }
//------------------------------------------------------------------------------------------
define_function setLevel( integer val ){ m_estado.level = val }
define_function integer getLevel(){ 		return m_estado.level }
define_function decLevel()
{ 					
	 if( m_estado.level > 0 )
		  m_estado.level-- 
}
define_function incLevel()
{ 					
	 if( m_estado.level < MAX_LEVEL_VOL )
		  m_estado.level++ 
}
//------------------------------------------------------------------------------------------
define_function setEstadoPlus( integer val ){ m_estado.estadoPlus = val }
define_function integer getEstadoPlus(){ return m_estado.estadoPlus }
define_function integer isEstadoPlus( integer val ){ if( m_estado.estadoPlus == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setEstadoLyngBox( integer val ){ m_estado.estadoLyngBox = val }
define_function integer getEstadoLyngBox(){ return m_estado.estadoLyngBox }
define_function integer isEstadoLyngBox( integer val ){ if( m_estado.estadoLyngBox == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setFormato( integer val ){ m_estado.formato = val }
define_function integer getFormato(){ return m_estado.formato }
define_function integer isFormato( integer val ){ if( m_estado.formato == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setFormatoP( integer val ){ m_estado.formatoP = val }
define_function integer getFormatoP(){ return m_estado.formatoP }
define_function integer isFormatoP( integer val ){ if( m_estado.formatoP == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setPantallaTV( integer val ){ m_estado.pantallaTV = val }
define_function integer isPantallaTV(){ return m_estado.pantallaTV }
//------------------------------------------------------------------------------------------
define_function setGrupoCanales( integer val ){ m_estado.grupoCanales = val }
define_function integer getGrupoCanales(){ return m_estado.grupoCanales }
//------------------------------------------------------------------------------------------
define_function setInit( integer val ){ m_estado.init = val }
define_function integer isInit(){ if( m_estado.init == 1 ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function marcaDevice( integer val )
{
	 /*send_command dvTp,"'^BMF-11.21,1,%P',BITMAP_DEV_NO_SELECTED" //BTN_TDT..BTN_RADIO
	 
	 //send_string 0, "'^BMF-',itoa( aBtnDevice[ val ] ),',1,%CF',COLOR_BG_SELECTED"

	 if( val != DEV_NINGUNO )
		  send_command dvTp,"'^BMF-',itoa( aBtnDevice[ val ] ),',1,%P',BITMAP_DEV_SELECTED"*/

	 local_var i, btn

	 btn = aBtnDevice[ val ]

	 send_string 0,  "'marcaDevice(', sDevices[ val ],') btn[', itoa( btn ) ,']'"

	 for( i = 11; i <= 22; i++ )
	 {

		  if( i == btn )
				On[ dvTp, i ]
		  else
				Off[ dvTp, i ]
	 }
}

define_function showPopupDevice( integer val )
{ 
	 switch( val )
	 {
		  case DEV_IPLUS:		{ showPopup( '03-iPlus' ) }
		  case DEV_DVD_A:		{ showPopup( '05-DVD' ) }
		  case DEV_BLURAY:	{ showPopup( '06-BluRay' ) }
	 }
}

define_function set_audio( integer device )
{
	  switch( device ) 
	  {
			case DEV_IPLUS:	{ 		ppush( cKramer, CMD_KRAMER_HDMI1, 		0 ) }
			case DEV_DVD_A:	{ 		ppush( cKramer, CMD_KRAMER_DP, 		0 ) }
			case DEV_BLURAY: { 		ppush( cKramer, CMD_KRAMER_HDMI2, 		0 ) }
			case DEV_APPLE:	{ 		ppush( cKramer, CMD_KRAMER_HDMI3, 		0 ) }
			case DEV_CHROMECAST: { 	ppush( cKramer, CMD_KRAMER_HDMI4, 		0 ) }
	  }
}

define_function set_video( integer device )
{
	// needed?
	if( getEscena() == ESC_CINE )
		doProyector(CMD_PROY_HDMI1) 

	// needed?
	if( getEscena() == ESC_TV && device == DEV_DVD_A )
		ppush_p( cRelays, REL_MERIDIAN, REL_ON,	10 ) 

	switch( device ) 
	{
		 case DEV_IPLUS:		{ ppush( cKramer, CMD_KRAMER_HDMI4, 10 ) }
		 case DEV_DVD_A:		{ ppush( cKramer, CMD_KRAMER_UNIV2, 10 ) }
		 case DEV_BLURAY:		{ ppush( cKramer, CMD_KRAMER_HDMI1, 10 ) }
		 case DEV_APPLE:		{ ppush( cKramer, CMD_KRAMER_HDMI2, 10 ) }
		 case DEV_CHROMECAST:	{ ppush( cKramer, CMD_KRAMER_HDMI3, 10 ) }
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

	 set_audio( val )
	 set_video( val )
}


define_function integer getDevice(){ return m_estado.device }
define_function integer isDevice( integer val ){ if( m_estado.device == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function marcaEscena( integer val )
{
	 local_var i, btn

	 btn = aBtnEscena[ val ]

	 send_string 0, "'marcaEscena(', sEscenas[ val ],') btn(', itoa( btn ),')'"
	 
	 /*send_command dvTp,"'^BMF-1.4,1,%P',BITMAP_ESC_NO_SELECTED"
	 
	 if( val != ESC_NINGUNA )
		  send_command dvTp,"'^BMF-',itoa( aBtnDevice[ val ] ),',1,%P',BITMAP_ESC_SELECTED"*/


	 for( i = 1; i <= 4; i++ )
	 {
		  if( i == btn )
				On[ dvTp, i ]
		  else
				Off[ dvTp, i ]
	 }
}

define_function activaBotonesEscena( integer val ) //visible/no visible, enable/disable
{
	 //send_string 0, "'activaBotonesEscena(',sEscenas[val],')'"
	 send_command dvTp,"'^BMF-11.22,0,%OP255%EN1'" //BTN_TDT..BTN_RADIO; todos (1)visibles, (2)enables
	 switch( val )
	 {
		  case ESC_TV:					{ send_command dvTp,"'^BMF-14&16.22,0,%OP0%EN0'" } 	// Más adelante habrá quer activar el 13 (DVD-V), cuando tengamos un interruptor para parar las pantallas
		  case ESC_TV_CON_EQUIPOS:	{ send_command dvTp,"'^BMF-16.22,0,%OP0%EN0'" } 			//
		  case ESC_CINE:				{ send_command dvTp,"'^BMF-11&16.17&20.22,0,%OP0%EN0'" } 				//Sólo quitamos la radio
		  case ESC_MUSICA:			{ send_command dvTp,"'^BMF-11.13&16.19,0,%OP0%EN0'" } 	// Ponemos BlyRay también para música
		  case ESC_NINGUNA:			{ send_command dvTp,"'^BMF-11.22,0,%OP0%EN0'" } 			//
	 }
	 //Botón vídeo
	 switch( val )
	 {
		  case ESC_TV:					{ send_command dvTp,"'^TXT-17,0,Video'" }
		  case ESC_TV_CON_EQUIPOS:	{ send_command dvTp,"'^TXT-17,0,Video/TV'" }
		  case ESC_CINE:				{ send_command dvTp,"'^TXT-17,0,Video/TV'" }
	 }
}

define_function integer onRelays( integer doOn ) //solo los encendidos
{ 
	 if( doOn )
	 {
		  if( isPeticionEscena( ESC_CINE ) )
			{
				//ppush_p( cRelays, REL_PROYECTOR, 			REL_ON, 10 )
				ON[dvIOs,8]
				ppush_p( cRelays, REL_FLEXO_PANTALLA_DOWN, REL_ON, 10 )
			}
	 }
		  
	 switch( getEscena() )
	 {
		  case ESC_NINGUNA:
		  {
				switch( getPeticionEscena() ) //a donde va
				{
					 case ESC_TV:
					 {
						  if( doOn )
						  {
								ppush_p( cRelays, REL_TV, 					REL_ON, 10 )
								ppush_p( cRelays, REL_IPLUS, 				REL_ON, 10 )
								ppush_p( cRelays, REL_SERV_CONT, 			REL_OFF, 10 )   //vídeo y servidor de contenidos
								ppush_p( cRelays, REL_MERIDIAN, 			REL_OFF, 10 )
								ppush_p( cRelays, REL_EQUIPOS, 				REL_ON, 10 )	//SAT HD: Lyngbox (entre otros)
						  }
						  return 50
					 }
					 case ESC_TV_CON_EQUIPOS:
					 case ESC_CINE:
					 case ESC_MUSICA:
					 {
						  if( doOn )
						  {
								ppush_p( cRelays, REL_TV, 					REL_ON, 10 )
								ppush_p( cRelays, REL_IPLUS, 				REL_ON, 10 )
								ppush_p( cRelays, REL_SERV_CONT, 			REL_ON, 10 ) //aqui están vídeo y servidor de contenidos
								ppush_p( cRelays, REL_MERIDIAN, 			REL_ON, 10 )
								ppush_p( cRelays, REL_EQUIPOS, 				REL_ON, 10 )
								
								ppush_p( cRelays, REL_PANTALLAS_SUBWOOFER, 	REL_ON, 10 )
						  }

						  return 70
					 }
				}
		  }
		  case ESC_TV:
		  {
				switch( getPeticionEscena() ) //a dónde va
				{
					 //case ESC_TV:
					 case ESC_TV_CON_EQUIPOS:
					 case ESC_CINE:
					 case ESC_MUSICA:
					 {
						  if( doOn )
						  {
								ppush_p( cRelays, REL_MERIDIAN, 					REL_ON, 10 )
								//ppush_p( cRelays, REL_PROYECTOR, 				REL_ON, 10 )
								ppush_p( cRelays, REL_PANTALLAS_SUBWOOFER, 	REL_ON, 10 )
						  }

						  return 30
					 }
				}
		  }
		  case ESC_TV_CON_EQUIPOS: //no enciendo nada, ya todo está encendido
		  case ESC_CINE:
		  case ESC_MUSICA:
		  {
				switch( getPeticionEscena() ) //a donde va
				{
					 case ESC_TV:
					 {
							ppush_p( cRelays, REL_MERIDIAN, 					REL_OFF, 10 )	
					 }
					 case ESC_TV_CON_EQUIPOS:
					 case ESC_CINE:
					 case ESC_MUSICA:
					 {
						  return 0
					 }
				}
		  }
	 }
}


define_function integer offRelays( integer doOff ) //aqui solo miramos los apagados
{ 
	 
	 if( isEscenaAnterior( ESC_CINE ) && doOff )
	 {
		  if( isEscena( ESC_TV ) || isEscena( ESC_TV_CON_EQUIPOS ) )
		  {
				wait TIEMPO_RETARDO_PROY_OFF
				{
					 ppush_p( cRelays, REL_FLEXO_PANTALLA_DOWN, REL_OFF, 0 )
					 WAIT TIEMPO_PANTALLA_UP_DOWN
							//ppush_p( cRelays, REL_PROYECTOR, 			REL_OFF, 10 )
							OFF[dvIOs,8]
				}
		  }
		  else
				wait TIEMPO_RETARDO_PROY_OFF
				{
					ppush_p( cRelays, REL_FLEXO_PANTALLA_DOWN, REL_OFF, 0 )
					 WAIT TIEMPO_PANTALLA_UP_DOWN
							//ppush_p( cRelays, REL_PROYECTOR, 			REL_OFF, 10 )
							OFF[dvIOs,8]
				}
	 }

	 switch( getEscenaAnterior() ) //donde estaba
	 {
		  case ESC_NINGUNA:
		  {
				switch( getEscena() ) //donde está
				{
					 case ESC_NINGUNA:
					 case ESC_TV:
					 case ESC_TV_CON_EQUIPOS:
					 case ESC_CINE:
					 case ESC_MUSICA:
					 {
						  return 0
					 }
				}
		  }
		  case ESC_TV:
		  {
				switch( getEscena() ) 
				{
					 case ESC_NINGUNA:
					 {
						  if( doOff )
						  {
								ppush_p( cRelays, REL_TV, 			REL_OFF, 10 )
								ppush_p( cRelays, REL_IPLUS,		REL_OFF, 10 )
								ppush_p( cRelays, REL_SERV_CONT,	REL_OFF, 10 )
								ppush_p( cRelays, REL_EQUIPOS, 		REL_OFF, 10 )
								ppush_p( cRelays, REL_MERIDIAN, 	REL_OFF, 10 )
						  }
						  
						  return 40
					 }
					 case ESC_TV:
						if ( doOff)
						{
							ppush_p( cRelays, REL_MERIDIAN, 	REL_OFF, 10 )
							ppush_p( cRelays, REL_SERV_CONT,	REL_OFF, 10 )
						}
					 case ESC_TV_CON_EQUIPOS:
					 case ESC_CINE:
					 case ESC_MUSICA:
					 {
						  return 0
					 }
				}
		  }
		  case ESC_TV_CON_EQUIPOS:
		  case ESC_CINE:
		  case ESC_MUSICA:
		  {
				switch( getEscena() ) //donde está
				{
					 case ESC_NINGUNA:
					 {
						  if( doOff )
						  {
								ppush_p( cRelays, REL_TV, 							REL_OFF, 10 )
								ppush_p( cRelays, REL_IPLUS,						REL_OFF, 10 )

								ppush_p( cRelays, REL_EQUIPOS, 					REL_OFF, 10 )
								ppush_p( cRelays, REL_MERIDIAN, 					REL_OFF, 10 )
								ppush_p( cRelays, REL_SERV_CONT, 				REL_OFF, 10 )
								ppush_p( cRelays, REL_PANTALLAS_SUBWOOFER, 	REL_OFF, 10 )
						  }
						  
						  return 60
					 }
					 case ESC_TV:
					 {
						  if( doOff )
						  {
								//ppush_p( cRelays, REL_MERIDIAN, 					REL_OFF, 0 )
								//wait TIEMPO_RETARDO_PROY_OFF
								ppush_p( cRelays, REL_PANTALLAS_SUBWOOFER, 	REL_OFF, 0 )
						  }
						  return 20
					 }
					 case ESC_TV_CON_EQUIPOS:
					 case ESC_CINE:
					 case ESC_MUSICA:
					 {
						  return 0
					 }
				}
		  }
	 }
	 return 0 //por si me hubiera dejado algún caso
}


define_function integer isDevicePosible()
{ 
	 if( isDevice( DEV_NINGUNO ) )
		  return false
	 
	 switch( getEscena() )
	 {
		  case ESC_TV:
		  {
				switch( getDevice() )
				{
					 case DEV_DVD_A:	{ return false }
					 case DEV_IPLUS:	
					 case DEV_BLURAY:	{ return true }
					 
				}
		  }
		  case ESC_TV_CON_EQUIPOS:
		  {
				switch( getDevice() )
				{
					 case DEV_IPLUS:
					 case DEV_BLURAY:	{ return true }
					 case DEV_DVD_A:	{ return false }
					 
				}
		  }
		  case ESC_CINE:
		  {
				switch( getDevice() )
				{
					 case DEV_IPLUS:
					 case DEV_BLURAY:	{ return true }
					 case DEV_DVD_A:	{ return false }
				}
		  }
		  case ESC_MUSICA:
		  {
				switch( getDevice() )
				{
					 case DEV_IPLUS:	{ return false }
					 case DEV_DVD_A:	
					 case DEV_BLURAY:	{ return true }
				}
		  }
	 }
}

define_function setEscena( integer val )
{ 
	 send_string 0, "'setEscena(',sEscenas[val],')'"

	 setEscenaAnterior( m_estado.escena )
	 m_estado.escena = val 
	 setPeticionEscena( ESC_NINGUNA )
	 marcaEscena( val )
	 activaBotonesEscena( val )
	 
	 //Default device
	 switch( val )
	 {
		  case ESC_TV:  				//muestra la pantalla que toca
		  case ESC_TV_CON_EQUIPOS:
		  {
				if( isDevicePosible() )
					 setDevice( getDevice() )
				else
					setDevice( DEV_IPLUS )
		  }
		  case ESC_CINE:
		  {			
				if( isDevicePosible() )
					 setDevice( getDevice() )
				else
					 setDevice( DEV_IPLUS )
		  }
		  case ESC_MUSICA:
		  {			
				if( isDevicePosible() )
					 setDevice( getDevice() )
				else
					 setDevice( DEV_DVD_A )
		  }
		  case ESC_NINGUNA:	
		  {
				setDevice( DEV_NINGUNO ) 
		  }
	 }
	 
	 if( !isEscena( ESC_MUSICA ) )
	 {
		  setEmisora( 320 )
		  marcaEmisora( getEmisora() )
	 }
	 else
		  marcaCanalTV( 900 ) //desmarca todos
}

define_function integer getEscena(){ return m_estado.escena }
define_function integer isEscena( integer val ){ if( m_estado.escena == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setPeticionEscena( integer val ){ m_estado.peticionEscena = val }
define_function integer getPeticionEscena(){ return m_estado.peticionEscena }
define_function integer isPeticionEscena( integer val ){ if( m_estado.peticionEscena == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setEscenaAnterior( integer val ){ m_estado.escenaAnterior = val }
define_function integer getEscenaAnterior(){ return m_estado.escenaAnterior }
define_function integer isEscenaAnterior( integer val ){ if( m_estado.escenaAnterior == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setEstadoProyector( integer val ){ m_estado.estadoProyector = val }
define_function integer getEstadoProyector(){ return m_estado.estadoProyector }
define_function integer isEstadoProyector( integer val ){ if( m_estado.estadoProyector == val ) return 1 else return 0 }
//------------------------------------------------------------------------------------------
define_function setOrdenProyector( integer val ){ m_estado.ordenProyector = val }
define_function integer getOrdenProyector(){ return m_estado.ordenProyector }
define_function integer isOrdenProyector( integer val ){ if( m_estado.ordenProyector == val ) return 1 else return 0 }
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
define_function motorIn()
{
	set_pulse_time( 80 )
	Pulse[ dvMotor,	IR_MOTOR_IN ]
	set_pulse_time( 2 )
}

define_function doSemantica( integer val )
{
	 local_var integer tOn, tOff, tOnEquipos
	 tOn 			= 0
	 tOff 		= 0
	 tOnEquipos = 0
	 
	 trazaEstado('doSemantica')
	 send_string 0, "'doSemantica(',sSemanticas[ val ],')'"
	 
	 if( getEscena() != getPeticionEscena() )
	 {
		  //calculo de tiempos
		  tOn 	= onRelays( 	0 ) //solo encendidos
		  tOff 	= offRelays( 	0 ) 
		  
		  //if( isEscena( ESC_NINGUNA ) || isEscena( ESC_TV ) )
				tOnEquipos = 60
		  //else
		  //	tOnEquipos = 20
		  
		  onRelays( 	1 )
		  showMsgTempo('Carregant escena...', tOn + tOff + 40 ) //20 es el tiempo para el doSemantica2 (apagado de equipos)
		  wait tOn + tOnEquipos //espero a que se abran los circuitos antes de enviar comandos a los equipos
		  {
				doSemantica2( val )
				wait 40 //damos un tiempo para los apagados de equipos antes de quitar la alimentacion
					 offRelays( 1 ) //solo apagados
		  }
	 }
	 else //salida de escena, solo tiene apagados
	 {
		  tOff = offRelays( 0 ) //solo apagados
		  doSemantica2( val )
		  showMsgTempo('Abandonant escena...', 20 + tOff ) //20 es el tiempo para el doSemantica2 (apagado de equipos)
		  wait 100 //damos un tiempo para los apagados de equipos antes de quitar la alimentacion
				offRelays( 1 ) //solo apagados
				
	 }
}


define_function arrancaPlus()
{
	 switch( getEstadoPlus() )
	 {
		  case IPLUS_PARADO:
		  {
				if( isEscena( ESC_NINGUNA ) )
				{
					 setEstadoPlus( IPLUS_ARRANCANDO )
					 wait TIEMPO_PLUS 'tiempo_plus'
					 {
						  setEstadoPlus( IPLUS_ENCENDIDO )
						  ppush( cPlus, IR_IPLUS_1, 30 )  //encendido				
							WAIT 30 setCanal(2,1,3)
							
						  send_string 0, "'iPlus encendido...'"
						  showMsgTempo('iPlus arrencat...', 20 )
						  setDevice( DEV_IPLUS )
					 }
				}
				else
				{
					 setEstadoPlus( IPLUS_ENCENDIDO )
					 ppush( cPlus, IR_IPLUS_1, 30 )  //encendido				
					WAIT 30 setCanal(2,1,3)

					 
					 send_string 0, "'iPlus encendido...'"
					 showMsgTempo('iPlus arrencat...', 20 )
					 setDevice( DEV_IPLUS )
				}
		  }
		  case IPLUS_ARRANCANDO:
		  {
		  }
		  case IPLUS_ENCENDIDO:
		  {
		  }
	 }
}

define_function paraPlus()
{
	 switch( getEstadoPlus() )
	 {
		  case IPLUS_PARADO:
		  {
		  }
		  case IPLUS_ARRANCANDO:
		  {
				cancel_wait 'tiempo_plus'
		  }
		  case IPLUS_ENCENDIDO:
		  {
				Pulse[ 			dvPlus, 					IR_IPLUS_POWER ]
				send_string 0, "'iPlus parado...'"
		  }
	 }
	 setEstadoPlus( IPLUS_PARADO )
}

/*
// (a) arranque / parada:
// 1..3 : 		descanso 	-> 	...
// 4, 12, 19 : 	... 		-> 	descanso

// (b) proyector:
// 4, 5, 14 : cine -> ... : apagar proyector
// 7, 10, 17 : ... -> cine : encender proyector

// 01: descanso -> cine',
// 02: descanso -> tv',
// 03: descanso -> musica',
// 04: cine -> cine -> apagar cine',
// 05: cine -> tv',
// 06: cine -> musica',
// 07: tv -> cine',
// 08: tv -> tv -> pagar tv',
// 09: tv -> musica',
// 10: musica -> cine',
// 11: musica -> tv',
// 12: musica -> musica -> apagar musica',
// 13: descanso -> tv con equipos',
// 14: cine -> tv con equipos',
// 15: tv -> tv con equipos',
// 16: musica -> tv con equipos',
// 17: tv con equipos -> cine',
// 18: tv con equipos -> tv',
// 19: tv con equipos -> tv con equipos -> apagar tv con equipos',
// s20: tv con equipos -> musica'
*/

define_function doSemantica2( integer val )
{
	switch( val )
	{
	  case 01: // descanso -> cine
	  {
			//Equipos
			arrancaPlus()

			ppush( cBR,  CMD_BR_ON, 		20 )
			ppush( cDVD, CMD_DVD_SRC_DVD, 	20 )

			//Escalador-Procesador-Proyector
			ppush( cKramer, CMD_KRAMER_POWER_ON, 	50 )
			ppush( cKramer, CMD_KRAMER_HDMI4,		10 ) //iPlus

			doProyector(CMD_PROY_ON)				

			setEstadoProyector( PROY_CALENTANDO )
			wait TIEMPO_ESPERA_PROYECTOR 'luces_off'
			{
				 setEstadoProyector( PROY_DISPONIBLE )
				 lucesOff()
			}

			ppush( cProc, CMD_PROC_SRC_TAPE1, 			10 )
			
			//Esc
			setEscena( ESC_CINE )
	  }
	  case 02: // descanso -> TV
	  {
			//Equipos
			arrancaPlus()
			
			ppush( cBR,  CMD_BR_ON, 		20 )
			ppush( cDVD, CMD_DVD_SRC_DVD, 	20 )

			//Escalador-Procesador-Proyector
			ppush( cKramer, CMD_KRAMER_POWER_ON, 	50 )
			ppush( cKramer, CMD_KRAMER_HDMI4,		10 ) //iPlus

			//TV -> On
			ppush( cTV, IR_TV_1, 60 )
			ppush( cTV, IR_TV_POWER, 50 )
			
			setEscena( ESC_TV )
	  }
	  case 03: // descanso -> musica
	  {
			//Equipos
			arrancaPlus()

			ppush( 			cBR, 					CMD_BR_ON, 		20 )
			ppush( 			cDVD, 					CMD_DVD_SRC_CD, 	20 )

			//Procesador -> Primero al 861 (Procesador) y luego al 800 (DVD)
			//Escalador-Procesador-Proyector
			ppush( cKramer, CMD_KRAMER_POWER_ON, 	50 )
			ppush( cKramer, CMD_KRAMER_HDMI4,		10 ) //iPlus

			ppush( cProc, CMD_PROC_SRC_CD, 			20 )


			//Esc
			setEscena( ESC_MUSICA )
	  }
	  case 04: // cine -> cine -> apagar cine
	  {
			//Equipos

			paraPlus()

			ppush( 			cBR, 					CMD_BR_OFF, 		20 )
			ppush( 			cDVD, 					CMD_DVD_STANDBY, 		20 )

			//Escalador-Procesador-Proyector
			ppush( cKramer, CMD_KRAMER_POWER_OFF, 	10 )

			doProyector(CMD_PROY_OFF)

			setEstadoProyector( PROY_ENFRIANDO )
			wait TIEMPO_ESPERA_PROYECTOR
			{
				 setEstadoProyector( PROY_DISPONIBLE )
			}
			lucesOn()

			ppush( cProc, CMD_PROC_STANDBY, 			20 )

			//Esc
			setEscena( ESC_NINGUNA )
	  }
	  case 05: // cine -> tv
	  {
			//Escalador-Procesador-Proyector -> Off
			
			doProyector(CMD_PROY_OFF)

			wait TIEMPO_RETARDO_PROY_OFF
			{
				 setEstadoProyector( PROY_ENFRIANDO )
				 wait TIEMPO_ESPERA_PROYECTOR
				 {
					  setEstadoProyector( PROY_DISPONIBLE )
				 }
			}
			lucesOn()

			ppush( cProc, CMD_PROC_STANDBY, 			20 )

			//TV -> On
			ppush( cTV, IR_TV_POWER, 20 ) // de 50 a 20 para seleccionar antes el HDMI y que se oiga antes la TV... mirar que de tiempo a arrancarse la TV


			//Esc
			setEscena( ESC_TV )
	  }
	  case 06: // cine -> musica
	  {
			//Equipos

			ppush( 			cDVD, 					CMD_DVD_SRC_CD, 		20 )

			//Escalador-Proyector

			doProyector(CMD_PROY_OFF)

			setEstadoProyector( PROY_ENFRIANDO )
			wait TIEMPO_ESPERA_PROYECTOR
			{
				 setEstadoProyector( PROY_DISPONIBLE )
			}
			lucesOn()

			//Esc
			setEscena( ESC_MUSICA )
	  }
	  case 07: // tv -> cine
	  {
			//Escalador-Proyector -> On

			ppush( cDVD, CMD_DVD_SRC_DVD, 	20 )

			doProyector(CMD_PROY_ON)				

			wait TIEMPO_ESPERA_PROYECTOR 'luces_off'
			{
				 setEstadoProyector( PROY_DISPONIBLE )
				 lucesOff()
			}

			//TV -> Off
			wait TIEMPO_ESPERA_PROYECTOR
			{
				motorIn()
				wait 50
					ppush( cTV, IR_TV_POWER, 0 )
			}

			//Esc
			setEscena( ESC_CINE )
	  }
	  case 08: // tv -> tv -> apagar tv
	  {
			//Equipos -> Off
			paraPlus()
			
			ppush( 			cBR, 					CMD_BR_OFF, 		20 )
			ppush( 			cDVD, 					CMD_DVD_STANDBY, 		20 )

			//TV -> Off
			ppush( cTV, IR_TV_POWER, 0 )
			motorIn()
			//Esc
			setEscena( ESC_NINGUNA )
	  }
	  case 09: // tv -> musica
	  {
			//Equipos -> Off

			//Procesador -> On
			ppush( cProc, CMD_PROC_SRC_DVD, 			20 )
			
			//TV -> Off
			ppush( cTV, IR_TV_POWER, 0 )
			motorIn()

			//Esc
			setEscena( ESC_MUSICA )
	  }
	  case 10: // musica -> cine
	  {
			//Equipos -> On

			ppush( 			cDVD, 					CMD_DVD_SRC_DVD, 		20 )

			//Escalador-Proyector -> On
			doProyector(CMD_PROY_ON)				
			wait TIEMPO_ESPERA_PROYECTOR 'luces_off'
			{
				 setEstadoProyector( PROY_DISPONIBLE )
				 lucesOff()
			}

			//Esc
			setEscena( ESC_CINE )
	  }
	  case 11: // musica -> tv
	  {
			//Procesador, no la paro, necesito el DVD
			ppush( cProc, CMD_PROC_STANDBY, 			20 )

			//TV -> On
			ppush( cTV, IR_TV_POWER, 50 )

			setEscena( ESC_TV )
	  }
	  case 12: // musica -> musica -> apagar musica
	  {
			//Equipos -> Off

			paraPlus()

			ppush( 			cBR, 					CMD_BR_OFF, 		20 )
			ppush( 			cDVD, 					CMD_DVD_STANDBY, 		20 )

			//Procesador -> Off
			ppush( cProc, CMD_PROC_STANDBY, 			20 )
			ppush( cKramer, CMD_KRAMER_POWER_OFF, 	10 )

			setEscena( ESC_NINGUNA )
	  }
	  case 13: // descanso -> tv con equipos
	  {
			//Equipos -> On
			arrancaPlus()

			ppush( 			cBR, 					CMD_BR_ON, 		20 )

			ppush( 			cDVD, 					CMD_DVD_SRC_DVD, 		20 )

			//Escalador-Procesador-Proyector
			ppush( cProc, CMD_PROC_SRC_TAPE1, 			20 )

			ppush( cKramer, CMD_KRAMER_POWER_ON, 	50 )
			ppush( cKramer, CMD_KRAMER_HDMI4,		10 ) //iPlus


			//TV -> On
			ppush( cTV, IR_TV_1, 60 )
			ppush( cTV, IR_TV_POWER, 50 )
			ppush( cTV, IR_TV_MUTE, 20 )
			
			setEscena( ESC_TV_CON_EQUIPOS )
	  }
	  case 14: // cine -> tv con equipos
	  {
			doProyector(CMD_PROY_OFF)

			 //Escalador-Proyector: Off

			 setEstadoProyector( PROY_ENFRIANDO )
			 wait TIEMPO_ESPERA_PROYECTOR
			 {
				  setEstadoProyector( PROY_DISPONIBLE )
				  //Off[ dvRelays, REL_PROYECTOR ]
			 }

			lucesOn()

			//Procesador -> No pararlo, necesitamos el DVD

			//TV -> On
			ppush( cTV, IR_TV_POWER, 50 )
			ppush( cTV, IR_TV_MUTE, 20 )

			//Esc
			setEscena( ESC_TV_CON_EQUIPOS )
	  }
	  case 15: // tv -> tv con equipos
	  {
			//TV
			//(1)Hacer el mute de la TV o (2)bajar el volumen a '0'
			ppush( cTV, IR_TV_MUTE, 20 )
			
			setEscena( ESC_TV_CON_EQUIPOS )
	  }
	  case 16: // musica -> tv con equipos
	  {
			//Equipos
			ppush( 			cDVD, 					CMD_DVD_SRC_DVD, 		20 )

			//TV -> On
			ppush( cTV, IR_TV_POWER, 50 )
			ppush( cTV, IR_TV_MUTE, 20 )

			//Esc
			setEscena( ESC_TV_CON_EQUIPOS )
	  }
	  case 17: // tv con equipos -> cine
	  {
			//TV -> Off
			wait TIEMPO_ESPERA_PROYECTOR
			{
				motorIn()
				wait 50
					ppush( cTV, IR_TV_POWER, 0 )
			}

			//Escalador-Proyector -> On
			doProyector(CMD_PROY_ON)				

			wait TIEMPO_ESPERA_PROYECTOR 'luces_off'
			{
				 setEstadoProyector( PROY_DISPONIBLE )
				 lucesOff()
			}

			//Esc
			setEscena( ESC_CINE )
	  }
	  case 18: // tv con equipos -> tv
	  {
			//Procesador
			ppush( cProc, CMD_PROC_STANDBY, 			20 )

			//TV -> Restaurar el volumen
			ppush( cTV, IR_TV_VOL_UP, 10 )

			//Esc
			setEscena( ESC_TV )
	  }
	  case 19: // tv con equipos -> tv con equipos -> apagar tv con equipos
	  {
			//Equipos -> Off

			paraPlus()
			ppush( 			cBR, 					CMD_BR_OFF, 		20 )
			ppush( 			cDVD, 					CMD_DVD_STANDBY, 		20 )

			//Procesador, escalador
			ppush( cProc, CMD_PROC_STANDBY, 			20 )

			//TV -> Off
			ppush( cTV, IR_TV_POWER, 0 )
			motorIn()

			//Esc
			setEscena( ESC_NINGUNA )
	  }
	  case 20: // tv con equipos -> musica
	  {
			//Equipos -> Off, todos menos el iPlus (que tiene las emisoras de radio)
			
			ppush( 	cDVD,CMD_DVD_SRC_CD, 		20 )

			//TV -> Off
			ppush( cTV, IR_TV_POWER, 0 )
			motorIn()

			//Esc
			setEscena( ESC_MUSICA )
	  }
	}
}


define_function resetPlus()
{
	send_string 0, "'resetPlus...'"
	
	On[ dvIOs, IO_RESET_PLUS ]
	send_string 0, "'On[ dvIOs, ', itoa(IO_RESET_PLUS), ' ]'"
	
	wait 50
	{
		Off[ dvIOs, IO_RESET_PLUS ]
		send_string 0, "'Off[ dvIOs, ', itoa(IO_RESET_PLUS), ' ]'"

		setEstadoPlus( IPLUS_ARRANCANDO )
		wait TIEMPO_PLUS 'tiempo_plus'
		{
			 setEstadoPlus( IPLUS_ENCENDIDO )
			 ppush( cPlus, IR_IPLUS_1, 30 )  //encendido				
			 ppush( cPlus, IR_IPLUS_1, 0 )	//canal 1				
		}
	
	}
}

define_function lucesOn()
{
	 send_string 0, "'lucesOn...'"
	 
	 cancel_wait 'luces_off'
	 
	 On[ dvIOs, IO_LUZ_UP ]
	 wait TIEMPO_RAMPA_LUCES
		  Off[ dvIOs, IO_LUZ_UP ]
}

define_function lucesOff()
{
	 send_string 0, "'lucesOff...'"

	 On[ dvIOs, IO_LUZ_DOWN ]
	 wait TIEMPO_RAMPA_LUCES
		  Off[ dvIOs, IO_LUZ_DOWN ]
}


define_function MainLineRelays()
{
   local_var tCmd cmd

	 switch( cRelays.estado )
	 {
		  //---------
		  case FREE:
		  //---------
		  {
				if( pop( cRelays, cmd ) )
				{
					 if( cmd.param == REL_ON )
					 {
						  send_string 0, "'On[ 	dvRelays,',sRelays[ cmd.cmd ],']'"
						  On[ 	dvRelays, cmd.cmd ]
					 }
					 else //REL_OFF
					 {
						  send_string 0, "'Off[ 	dvRelays,',sRelays[ cmd.cmd ],']'"
						  Off[ 	dvRelays, cmd.cmd ]
					 }
					 cRelays.estado = WAITING_WAIT
				}
		  }
		  //---------
		  case WAITING_WAIT:
		  //---------
		  {
				if( cRelays.last.tExe )
				{
					  cRelays.estado = WAITING_EXECUTION
					  wait cRelays.last.tExe
						  cRelays.estado = FREE
				}
				else{ cRelays.estado = FREE }
		  }
	 }
}

//------------------------------------------------------------------------------------------
DEFINE_START

	 send_string 0, "'DEFINE_START'"
	 
	 setInit( 1 )

	 clearCola( cRelays, 'Relays' )

	 m_estado.escena = ESC_NINGUNA //es necesario para la primera vez

	 //configBotones()
	 //showPage( 					'01-Principal' ) //no siempre va; tal vez desde online del mando

	 send_command dvProc,		'SET BAUD 9600,N,8,1'		// 1: Meridian 861, cable directo
	 send_command dvDVD,		'SET BAUD 9600,N,8,1'		// 2: Meridian 800, cable directo
	 send_command dvProy,		'SET BAUD 19200,N,8,1'		// 3: Proyector Faroudja; cross cable; también puede ir a 9600 (lo dice el manual)
	 send_command dvKramer,		'SET BAUD 19200,N,8,1' 		// 7: Kramer VP-734, cable directo
	 														// 5: -
	 send_command dvBluRay,		'SET BAUD 9600,N,8,1'		// 6: BluRay OPPO BDP95EU; cable ?
	 														// 7: -
	 

	 //On[ dvIOs, IO_RESET_PLUS ]
	 
	 setEmisora( 320 )


DEFINE_EVENT


button_event[ dvTp, 1 ]
{
	 push:
	 {
		  send_string 0, "'Boton 1...'"
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, aBtnEscena ] //(1)Escenas (2)Si/No (3)Luces/Motores
//-----------------------------------------------------------------------
{
   push:
   {
		  local_var btn
		  btn = get_last( aBtnEscena )

		  //trazaEstado('BtnEscena')

		  send_string 0, "'aBtnEscena[', itoa(btn),'][',itoa( aBtnEscena[ btn ] ),']'"

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
									 showMsg('Projector refredant-se...encara no es pot arrencar la sessió de cinema')
								else
									 doSemantica( 01 ) 
						  } // descanso -> cine
						  case ESC_CINE:		// cine -> descanso
						  { 
								if( isEstadoProyector( PROY_CALENTANDO ) )
									 showMsg('Projector escalfanmt-se...encara no es pot abandonar la sessió de cinema')
								else
									 showDialogo('¿Segur d.abandonar l.escena de cinema?') 
						  }
						  case ESC_TV:		
						  {
								if( isEstadoProyector( PROY_ENFRIANDO ) )
									 showMsg('Projector refredant-se...encara no es pot iniciar una nova sessió de cinema')
								else
									 showDialogo('¿Segur d.abandonar l.escena de TV?') 
						  }
						  case ESC_TV_CON_EQUIPOS:		
						  {
								if( isEstadoProyector( PROY_ENFRIANDO ) )
									 showMsg('Projector refredant-se...encara no es pot iniciar una nova sessió de cinema')
								else
									 showDialogo('¿Segur d.abandonar l.escena de TV amb equipaments?') 
						  }
						  case ESC_MUSICA:	{ showDialogo('¿Segur d.abandonar l.escena de música?') }
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
									 showMsg('Projector escalfant-e...encara no es pot abandonar la sessió de cinema')
								else
									 showDialogo('¿Segur d.abandonar l.escena de cinema?') 
						  }
						  case ESC_TV:					{ showDialogo('¿Segur d.abandonar l.escena de TV?') }
						  case ESC_TV_CON_EQUIPOS:	{ showDialogo('¿Segur d.abandonar l.escena de TV amb equipaments?') }
						  case ESC_MUSICA:			{ showDialogo('¿Segur d.abandonar l.escena de música?') }
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
						  case ESC_TV_CON_EQUIPOS:	{ showDialogo('¿Segur d.abandonar l.escena de TV amb equipaments?') }
						  case ESC_CINE:		
						  { 
								if( isEstadoProyector( PROY_ENFRIANDO ) )
									 showMsg('Projector refredant-se...encara no es pot iniciar la sessió de cinema')
								else
									 showDialogo('¿Segur d.abandonar l.escena de cinema amb equipaments?') 
						  }
						  case ESC_TV:					{ showDialogo('¿Segur d.abandonar l.escena de TV?') }
						  case ESC_MUSICA:			{ showDialogo('¿Segur d.abandonar l.escena de música?') }
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
									 showMsg('Projector escalfant-se...encara no es pot abandonar la sessió de cinema')
								else
									 showDialogo('¿Segur d.abandonar l.escena de cinema?') 
						  }
						  case ESC_TV:					{ showDialogo('¿Segur d.abandonar l.escena de TV?') }
						  case ESC_TV_CON_EQUIPOS:	{ showDialogo('¿Segur d.abandonar l.escena de TV amb equipaments?') }
						  case ESC_MUSICA:			{ showDialogo('¿Segur d.abandonar l.escena de música?') }
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
		  
		  /*if( btn == DEV_SAT && !isEstadoLyngBox( LYNGBOX_ENCENDIDO ) )
		  {
				send_string 0, "'Sel·leccionat SAT però LyngBox encara no arrencat...'"
				showMsgTempo('Lyngbox arrancando...', 20 )
		  }
		  else*/ if( btn == DEV_IPLUS && !isEstadoPlus( IPLUS_ENCENDIDO ) )
		  {
				send_string 0, "'Sel·leccionat iPlus però iPlus encara no rrencat...'"
				showMsgTempo('iPlus arrancando...', 20 )
		  }
		  else
		  {
				trazaEstado('BtnDevice')
				setDevice( btn )
		  }
	 }
}


//-----------------------------------------------------------------------
button_event[ dvTp, BTN_VOL_UP ]
//-----------------------------------------------------------------------
{
	 push:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				
				case ESC_MUSICA:			
				case ESC_TV_CON_EQUIPOS:	{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_UP ] }
		  }
	 }
	 hold[ 2, repeat ]:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				
				case ESC_MUSICA:			
				case ESC_TV_CON_EQUIPOS:	{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_UP ] }
				
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_UP ] }
		  }
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, BTN_VOL_DOWN ]
//-----------------------------------------------------------------------
{
	 push:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				
				case ESC_MUSICA:			
				case ESC_TV_CON_EQUIPOS:	{ send_string dvProc, sCmdProc[	CMD_PROC_VOL_DOWN ] }
				
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_DOWN ] }
		  }
	 }
	 hold[ 2, repeat ]: //cuando se mantiene la tecla pulsada, forzamos a que cada 0.5 se envíe el cmd  
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				
				case ESC_MUSICA:			
				case ESC_TV_CON_EQUIPOS:	{ send_string dvProc, sCmdProc[ 	CMD_PROC_VOL_DOWN ] }
				
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_VOL_DOWN ] }
		  }
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, BTN_VOL_MUTE ]
//-----------------------------------------------------------------------
{
	 push:
	 {
		  switch( getEscena() )
		  {
				case ESC_CINE:				
				case ESC_MUSICA:			
				case ESC_TV_CON_EQUIPOS:	{ send_string dvProc, sCmdProc[ 	CMD_PROC_MUTE ] }
				
				case ESC_TV:				{ Pulse[ dvTv, 						IR_TV_MUTE ] }
		  }
	 }
}

//-----------------------------------------------------------------------
button_event[ dvTp, aBtnExternalButtons ]
//-----------------------------------------------------------------------
{
	 push:
	 {
		  local_var index, btn
		  index = get_last( aBtnExternalButtons ) //¿te da el orden, no el valor, verdad?
		  btn = aBtnExternalButtons[ index ]
		  
		  send_string 0, "'aBtnExternalButtons[', itoa( btn ),']'"

			switch( btn )
			{
				 case BTN_EXT_UP:
				 {
					  switch( getDevice() )
					  {
							case DEV_TV:		{ ppush( cTV, IR_TV_UP, 0 ) }
							case DEV_IPLUS:		{ Pulse[ 		dvPlus, 			IR_IPLUS_UP ] }
							case DEV_DVD_A:		{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_UP ]  }
							case DEV_BLURAY:	{ send_string 	dvBluRay, sCmdBR[ 	CMD_BR_UP ]  }
					  }
				 }
				 case BTN_EXT_DOWN:
				 {
					  switch( getDevice() )
					  {
							case DEV_TV:		{ ppush( cTV, IR_TV_DOWN, 0 ) }
							case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_DOWN ] }
							case DEV_DVD_A:		{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_DOWN ] }
							case DEV_CD:		{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_DOWN ] }
							case DEV_BLURAY:	{ send_string 	dvBluRay, sCmdBR[ 	CMD_BR_DOWN ]  }
					  }
				 }
				 case BTN_EXT_LEFT:
				 {
					  switch( getDevice() )
					  {
							case DEV_TV:		{ ppush( cTV, IR_TV_LEFT, 0 ) }
							case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_LEFT ] }
							case DEV_DVD_A:		{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_LEFT ] }
							case DEV_CD:			{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_LEFT ] }
							case DEV_BLURAY:	{ send_string 	dvBluRay, sCmdBR[ 	CMD_BR_LEFT ]  }
					  }
				 }
				 case BTN_EXT_RIGHT:
				 {
					  switch( getDevice() )
					  {
							case DEV_TV:		{ ppush( cTV, IR_TV_RIGHT, 0 ) }
							case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_RIGHT ] }
							case DEV_DVD_A:		{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_RIGHT ] }
							case DEV_BLURAY:	{ send_string 	dvBluRay, sCmdBR[ 	CMD_BR_RIGHT ]  }
					  }
				 }
				 case BTN_EXT_SELECT:
				 {
					  switch( getDevice() )
					  {
							case DEV_TV:		{ ppush( cTV, IR_TV_OK, 0 ) }
							case DEV_IPLUS:		{ Pulse[ 		dvPlus, 				IR_IPLUS_OK ] }
							case DEV_DVD_A:		{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_ENTER ] }
							case DEV_CD:		{ send_string 	dvDvd, sCmdDVD[ 	CMD_DVD_ENTER ] }
							case DEV_BLURAY:	{ send_string 	dvBluRay, sCmdBR[ 	CMD_BR_ENTER ]  }
					  }
				 }
			}//switch
	 }//push
}//button_event


level_event[ dvTp, BTN_EXT_RUEDA_UP ]
{
	 incLevel()
	 
	 if( level.value >= MAX_LEVEL_VOL )
		  send_level dvTp, BTN_EXT_RUEDA_UP, 0
		  
	if( isPantallaTV() )
	{
	    send_string 0, "'ext up, tv'"
		ppush( cTV, IR_TV_UP, 0 )
	}
	else
	{
		 send_string 0, "'ext up,',sDevices[ getDevice() ]"
	
		 switch( getDevice() ) 
		 {
			  case DEV_TV:		{ ppush( cTV, IR_TV_UP, 0 ) }
			  case DEV_IPLUS:	{ Pulse[ dvPlus, 							IR_IPLUS_UP ] }
			  case DEV_DVD_A: 	{ send_string 	dvDvd, sCmdDVD[ 			CMD_DVD_UP ] }
			  case DEV_BLURAY:	{ send_string 	dvBluRay, sCmdBR[ 			CMD_BR_UP ]  }
		 }
	}
}
level_event[ dvTp, BTN_EXT_RUEDA_DOWN ]
{
	 decLevel()

	 if( level.value >= MAX_LEVEL_VOL )
		  send_level dvTp, BTN_EXT_RUEDA_DOWN, 0

	if( isPantallaTV() )
	{
	    send_string 0, "'ext down, tv'"
		ppush( cTV, IR_TV_DOWN, 0 )
	}
	else
	{
		 send_string 0, "'ext down,',sDevices[ getDevice() ]"
	
		 switch( getDevice() ) 
		 {
			  case DEV_IPLUS:	{ Pulse[ dvPlus, 							IR_IPLUS_DOWN ] }
			  case DEV_DVD_A: 	{ send_string 	dvDvd, sCmdDVD[ 		CMD_DVD_DOWN ] }
			  case DEV_BLURAY:	{ send_string 	dvBluRay, sCmdBR[ 	CMD_BR_DOWN ]  }
		 }	 
	}
}



button_event[ dvTp, BTN_GEN_TV_ABRIR ]
{ 
	 push: 
	 { 
		  setPantallaTV( true )
		  showPopup('13-BotonesFlexo') 
	 } 
}
button_event[ dvTp, BTN_GEN_TV_SALIR ]
{ 
	 push: 
	 { 
		  setPantallaTV( false )
		  hidePopup('13-BotonesFlexo') 
	 }
}

//button_event[ dvTp, BTN_GEN_PROY_ABRIR ]{ push: { showPopup('13-BotonesProyector') } }
//button_event[ dvTp, BTN_GEN_PROY_SALIR ]{ push: { hidePopup('13-BotonesProyector') } }

button_event[ dvTp, BTN_GEN_DSP_SALIR ]{ push: { hidePopup('12-DSP') } }

/*
button_event[ dvTp, BTN_GEN_FORMATO2 ]
{ 
	 push: 
	 { 
		  switch( getEscena() )
		  {
				case ESC_TV:					
				case ESC_TV_CON_EQUIPOS:	{ Pulse[ dvTV, IR_TV_ASPECT ] }
				case ESC_CINE:					
				{
					 send_string 0 , "'BTN_ESC_FORMATO, getFormato()[', itoa( getFormato() ),']'"
					 switch( getFormato() )
					 {
						  case ESC_FORMAT_4_3:	
						  { 
								send_string dvEscD, sCmdEscD[ CMD_ESC_ASPECT_16_9 ]
								setFormato( ESC_FORMAT_16_9 )
						  }
						  case ESC_FORMAT_16_9:	
						  { 
								send_string dvEscD, sCmdEscD[ CMD_ESC_ASPECT_4_3 ]
								setFormato( ESC_FORMAT_4_3 )
						  }
					 }
				}
				case ESC_MUSICA: 				{}
		  }
	 } 
}
*/

button_event[ dvTp, BTN_GEN_FORMATO_PROY ]
{ 
	 push: 
	 { 
		  switch( getEscena() )
		  {
				case ESC_CINE:					
				{
					 send_string 0 , "'BTN_GEN_FORMATO_PROY, getFormatoP()[', itoa( getFormatoP() ),']'"
					 switch( getFormatoP() )
					 {
						  case PROY_FORMAT_50:	
						  { 
								//send_string dvProy, sCmdProy[ CMD_PROY_FORMAT_60 ]
								//ppush( cProy, CMD_PROY_FORMAT_60, 10 )				
								setFormatoP( PROY_FORMAT_60 )
						  }
						  case PROY_FORMAT_60:	
						  { 
								//send_string dvProy, sCmdProy[ CMD_PROY_FORMAT_50 ]
								//ppush( cProy, CMD_PROY_FORMAT_50, 10 )				
								setFormatoP( PROY_FORMAT_50 )
						  }
					 }//switch
				}//case
		  }//switch
	 } //push
}

button_event[ dvTp, BTN_LUZ_UP ]
{ 
	 push: 
	 { 
		  On[ dvIOs, IO_LUZ_UP ]
	 }
	 release:
	 {
		  Off[ dvIOs, IO_LUZ_UP ]
	 }
}
	 
button_event[ dvTp, BTN_LUZ_DOWN ]
{ 
	 push: 
	 { 
		  On[ dvIOs, IO_LUZ_DOWN ]
	 }
	 release:
	 {
		  Off[ dvIOs, IO_LUZ_DOWN ]
	 }
}

button_event[ dvTp, aBtnStop ]
button_event[ dvTp, aBtnPause ]
{
	 push:
	 {
		  if( isEscena( ESC_CINE ) )
				lucesOn()
	 }
}
button_event[ dvTp, aBtnPlay ]
{
	 push:
	 {
		  if( isEscena( ESC_CINE ) )
				lucesOff()
	 }
}


DEFINE_PROGRAM

MainLineRelays()
