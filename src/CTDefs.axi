PROGRAM_NAME='CTDefs'

include 'CTDefs ext.axi'

#IF_NOT_DEFINED __CTDEFS__

#DEFINE __CTDEFS__

DEFINE_CONSTANT

_FILE_OPEN_FOR_READ   = 1
_FILE_OPEN_FOR_NEW    = 2
_FILE_OPEN_FOR_APPEND = 3


_NULL  = ""
_TRUE  = 1
_FALSE = 0

(*
   Constantes para números de canales normalizados (Comm-tec).
   I = Información (feedback).
   F = Función.
*)
_CT_CH_DVI           = 512
_CT_CH_ON            = 256    // ON   = (I)   Dispositivo encendido.
_CT_CH_BUSY          = 257    // ON   = (I)   Dispositivo ocupado (pendiente de procesar algún comando).
_CT_CH_FAULT         = 258    // PUSH = (I)   Fallo en equipo.
_CT_CH_DEBUG         = 259    // ON   = (I/F) Habilita el modo de depuración.
_CT_CH_RESET         = 260    // ON   = (F)   Reset del módulo.
_CT_CH_DISABLED      = 261    // ON   = (I/F) Deshabilita la ejecución del módulo.
_CT_CH_FB_SIMULADO   = 262    // ON   = (I/F) Simula feedback del equipo.
_CT_CH_COM_MONITOR   = 263    // ON   = (F)   Habilita la monitorización de TX/RX en los siguientes canales:
_CT_CH_COM_TX        = 264    // ON   = (I)   Transmisión de datos.
_CT_CH_COM_RX        = 265    // ON   = (I)   Recepción de datos.
_CT_CH_COM_ONLINE    = 266    // ON   = (I)   Equipo online.
_CT_CH_COM_RANDOM    = 267    // ON   = (F)   Las solicitudes de estado se realizan en tiempos "aleatorios"
                              (*
                                 Esta función es especialmente interesante cuando se tienen muchos equipos iguales. Si las
                                 solicitudes de estado de todos llegan a coincidir, el rendimiento general del sistema cae
                                 en picado (enviar 36 tramas simultáneas de 5 caracteres llegan a ocupar el bus durante
                                 1.5 segundos...).
                              *)
_CT_CH_NOTIFICATION  = 268    // PUSH = (I)   Cualquier cambio de estado en el equipo que haya que notificar.                              

_CT_CH_VIDEO1        = 301    // ON   = (I)   La correspondiente entrada está seleccionada.
_CT_CH_VIDEO2        = 302
_CT_CH_VIDEO3        = 303
_CT_CH_VIDEO4        = 304

_CT_CH_SVIDEO1       = 305
_CT_CH_SVIDEO2       = 306
_CT_CH_SVIDEO3       = 307
_CT_CH_SVIDEO4       = 308

_CT_CH_RGB1          = 309
_CT_CH_RGB2          = 310
_CT_CH_RGB3          = 311
_CT_CH_RGB4          = 312

_CT_CH_YUV1          = 313
_CT_CH_YUV2          = 314
_CT_CH_YUV3          = 315
_CT_CH_YUV4          = 316

_CT_CH_INPUT1        = 317  // Para señales "no habituales", por ejemplo, DTVYPBPR
_CT_CH_INPUT2        = 318
_CT_CH_INPUT3        = 319
_CT_CH_INPUT4        = 320
_CT_CH_INPUT5        = 321
_CT_CH_INPUT6        = 322
_CT_CH_INPUT7        = 323
_CT_CH_INPUT8        = 324

_CT_CH_COOLING       = 401    // ON   = (I)   Lámpara enfriándose.
_CT_CH_OFF_DISABLED  = 402    // ON   = (I)   OFF desabilitado (recién encendido).
_CT_CH_STARTUP       = 403    // ON   = (I)   Startup (comienzo del encendido de los proyectores).
_CT_CH_AUDIO_MUTED   = 404    // ON   = (I)   Audio en mute.
_CT_CH_VIDEO_MUTED   = 405    // ON   = (I)   Vídeo en mute.
_CT_CH_ASPECT_43     = 406    // ON   = (I)   Proyector presenta 4:3
_CT_CH_ASPECT_169    = 407    // ON   = (I)   Proyector presenta 16:9
_CT_CH_COLTEMP_HI    = 408    // ON   = (I)   Temperatura de color alta
_CT_CH_COLTEMP_LO    = 410    // ON   = (I)   Temperatura de color baja
_CT_CH_SCANCONVERTER = 411    // ON   = (I)   Activado el scanconverter (Ver Barco, Sony, etc.)
_CT_CH_COOLING2      = 412    // ON   = (I)   Segunda etapa de enfriamiento (no totalmente frío, pero ya se puede encender)
_CT_CH_PERMANENT_MUTE = 413   // ON   = (I)   El mute de vídeo del proyector persiste aunque se haga cambio de fuente.


_CT_CH_AUDIO_FOLLOWS_VIDEO  = 501 // ON    = (I) Audio sigue a vídeo (compuesto).
_CT_CH_AUDIO_FOLLOWS_SVIDEO = 502 // ON    = (I) Audio sigue a supervídeo.
_CT_CH_AUDIO_FOLLOWS_RGB    = 503 // ON    = (I) Audio sigue a RGB.
_CT_CH_AUDIO_FOLLOWS_YUV    = 504 // ON    = (I) Audio sigue a YUV.



//____ Canales genéricos motores ______________

_MOTOR_SUBIR         = 1
_MOTOR_PARAR         = 2
_MOTOR_BAJAR         = 3

_MOTOR_CH_SUBIR      = 43
_MOTOR_CH_PARAR      = 44
_MOTOR_CH_BAJAR      = 45

_MOTOR_CH_FB_ARRIBA    = 512
_MOTOR_CH_FB_SUBIENDO  = 513
_MOTOR_CH_FB_PARADO    = 514
_MOTOR_CH_FB_BAJANDO   = 515
_MOTOR_CH_FB_ABAJO     = 516


//____ Canales genéricos de cámaras ____________

_CT_CH_CAM_CENTER      = 600     // (F) Posicionamiento
_CT_CH_CAM_UP          = 601
_CT_CH_CAM_UP_RIGHT    = 602
_CT_CH_CAM_RIGHT       = 603
_CT_CH_CAM_DOWN_RIGHT  = 604
_CT_CH_CAM_DOWN        = 605
_CT_CH_CAM_DOWN_LEFT   = 606
_CT_CH_CAM_LEFT        = 607
_CT_CH_CAM_UP_LEFT     = 608

_CT_CH_CAM_PANTILT_SPEED_0   = 610 // (I) Velocidad de pan-tilt
_CT_CH_CAM_PANTILT_SPEED_25  = 611
_CT_CH_CAM_PANTILT_SPEED_50  = 612
_CT_CH_CAM_PANTILT_SPEED_75  = 613
_CT_CH_CAM_PANTILT_SPEED_100 = 614

_CT_CH_CAM_ZOOM_SPEED_0   = 615     // (I) Velocidad del zoom
_CT_CH_CAM_ZOOM_SPEED_25  = 616
_CT_CH_CAM_ZOOM_SPEED_50  = 617
_CT_CH_CAM_ZOOM_SPEED_75  = 618
_CT_CH_CAM_ZOOM_SPEED_100 = 619

_CT_CH_CAM_AUTO_FOCUS     = 620   // (I) Autofocus y autoiris.
_CT_CH_CAM_AUTO_IRIS      = 621

_CT_CH_CAM_ZOOM_WIDE      = 631   // (F) Zoom, foco e iris.
_CT_CH_CAM_ZOOM_TELE      = 632
_CT_CH_CAM_FOCUS_NEAR     = 633
_CT_CH_CAM_FOCUS_FAR      = 634
_CT_CH_CAM_IRIS_CLOSE     = 635
_CT_CH_CAM_IRIS_OPEN      = 636

//____ Canales generales proyectores diapositivas _____

_CT_CH_DIAP_FWD         = 601   // (F) Disitintas funciones de transporte.
_CT_CH_DIAP_REV         = 602
_CT_CH_DIAP_RESET_FWD   = 603
_CT_CH_DIAP_RESET_REV   = 604
_CT_CH_DIAP_ZOOM_WIDE   = 631
_CT_CH_DIAP_ZOOM_TELE   = 632
_CT_CH_DIAP_FOCUS_NEAR  = 633
_CT_CH_DIAP_FOCUS_FAR   = 634
_CT_CH_DIAP_IRIS_CLOSE  = 635
_CT_CH_DIAP_IRIS_OPEN   = 636



//____ Canales generales sintonizadores de radio/TV _________

_CT_CH_MONO             = 601  //(I) Mono, estéreo, dual A, dual B
_CT_CH_STEREO           = 602
_CT_CH_DUAL_A           = 603
_CT_CH_DUAL_B           = 604
_CT_CH_SCAN_FWD         = 605 // (F) Scan adelante
_CT_CH_SCAN_REV         = 606 // (F) Scan atrás


(*
   Otras constantes.
*)

//____ Transporte de equipos _______________________________

_PLAY          = 1
_STOP          = 2
_PAUSE         = 3
_FFWD          = 4
_REW           = 5
_SFWD          = 6
_SREV          = 7
_REC           = 8
_EJECT         = 60
_FRAME_FWD     = 61
_FRAME_REV     = 62
_RESET_COUNTER = 63
_TRACK_UP      = 64
_TRACK_DN      = 65
_TRACK_AUTO    = 66

_BASS_UP       = 71
_BASS_DOWN     = 72
_TREBLE_UP     = 73
_TREBLE_DOWN   = 74

_PLAY_FB      = 241
_STOP_FB      = 242
_PAUSE_FB     = 243
_FFWD_FB      = 244
_REW_FB       = 245
_SFWD_FB      = 246
_SREV_FB      = 247
_REC_FB       = 248
_REC_PAUSE_FB = 249
_NOTAPE_FB    = 250
_REMOTE_FB    = 251
_PLAY_REV_FB  = 252


//Canales de feedback para el módulo del CD
_DV_EJECT_FB    = 1000
_DV_STANDBY_FB  = 1001

//___ Otros estándar de AMX ________________________

_POWER        = 9 // No usar. Send_command 'PON' y 'POFF'
_N0           = 10
_N1           = 11
_N2           = 12
_N3           = 13
_N4           = 14
_N5           = 15
_N6           = 16
_N7           = 17
_N8           = 18
_N9           = 19
_N10          = 20
_ENTER        = 21
_CHANNEL_UP   = 22
_CHANNEL_DOWN = 23
_VOLUME_UP    = 24
_VOLUME_DOWN  = 25
_MUTE         = 26 // No usar. Send_command 'AUDIO MUTE', 'AUDIO UNMUTE', 'VIDEO MUTE', 'VIDEO UNMUTE'
_ON           = 27 // No usar. Send_command 'PON'
_OFF          = 28 // No usar. Send_command 'POFF'

_SEL_TV_VIDEO = 29
_SEL_TV_VCR   = 29
_SEL_TV_LDP   = 29

_SEL_TV       = 30

_SEL_VIDEO1   = 31
_SEL_LINE_A   = 31
_SEL_VCR1     = 31
_SEL_VDP      = 31
_SEL_INPUT_UP = 31

_SEL_VIDEO2   = 32
_SEL_LINE_B   = 32
_SEL_VCR2     = 32
_SEL_INPUT_DOWN = 32

_SEL_VIDEO3   = 33

_SEL_RGB1     = 34
_SEL_TAPE1    = 34

_SEL_RGB2     = 35
_SEL_TAPE2    = 35

_SEL_CD       = 36
_SEL_TUNER    = 37
_SEL_PHONO    = 38
_SEL_AUX      = 39
_SEL_AM_FM    = 40 // No usar. Send_command 'AM','FM'

_PLAY_REV     = 41
_A_B          = 42 // No usar. Implementar send commands.

_SEL_TV_FB     = 210 // Los feedbacks...
_SEL_VIDEO1_FB = 211
_SEL_LINE_A_FB = 212
_SEL_VCR1_FB   = 213
_SEL_VDP_FB    = 214
_SEL_VIDEO2_FB = 215
_SEL_LINE_B_FB = 216
_SEL_VCR2_FB   = 217
_SEL_VIDEO3_FB = 218
_SEL_RGB1_FB   = 219
_SEL_TAPE1_FB  = 220
_SEL_RGB2_FB   = 221
_SEL_TAPE2_FB  = 222
_SEL_CD_FB     = 223
_SEL_TUNER_FB  = 224
_SEL_PHONO_FB  = 225
_SEL_AUX_FB    = 226
_SEL_AM_FB     = 227
_SEL_FM_FB     = 228

DEFINE_VARIABLE

constant char _MES[][10] = { 'enero','febrero','marzo','abril','mayo','junio',
                             'julio','agosto','septiembre','octubre','noviembre','diciembre'}
constant integer _DIAS_MES[] = {31,28,31, 30,31,30, 31,31,30, 31,30,31}




//____ Funcioncillas útiles ___________________

define_function CTProcessAllEvents()
{
   stack_var integer nDumb
   nDumb = 0; long_while (nDumb<2) {nDumb++}
}

define_function char[8] CTSumarHoras (char strH1[], char strH2[])
{
stack_Var sinteger snH, snM, snS
//stack_Var char strH[2],strM[2],strS[2]
   snH = time_to_hour  (strH1) + time_to_hour(strH2)
   snM = time_to_minute(strH1) + time_to_minute(strH2)
   snS = time_to_second(strH1) + time_to_second(strH2)
   if (snS > 59) {snS = snS - 60; snM ++}
   if (snM > 59) {snM = snM - 60; snH ++}
   if (snH > 23) {snH = snH - 24}
//   strS = right_string ("'00',itoa(snS)",2)
//   strM = right_string ("'00',itoa(snM)",2)
//   strH = right_string ("'00',itoa(snH)",2)
   
//   return "strH,':',strM,':',strS"
   return "format('%02d',snH),':',format('%02d',snM),':',format('%02d',snS)"
}

define_function integer CTAnyoBisiesto(integer nAnyo)
{
   return ( ((nAnyo%400)=0) or ( ((nAnyo%4)=0)  and ((nAnyo%100)<>100) ) )
}

define_function char [30] CTFechaEnEspanol (char strFecha[])
{
   return "itoa(date_to_day(strFecha)),' de ',_MES[type_cast(date_to_month(strFecha))],' de ',itoa(2000+type_cast(date_to_year(strFecha)) )"
}
define_function char [10] CTFechaFormatoEspanol (char strFecha[])
{
   return "itoa(date_to_day(strFecha)),'/',itoa(date_to_month(strFecha)),'/',itoa(date_to_year(strFecha)+type_cast(2000))"
}

define_function sinteger CTCompararFechas (char strFecha1[], char strFecha2[])
{
stack_var char strF1[8],strF2[8]

   // Cuidadín!!! Esta función es una función del siglo XXI y no va a funcionar en programaciones pensadas
   // para el siglo pasado ni el próximo.
   // Y como el resto de funciones, sólo funciona con nuestro calendario (ni hebreos, ni musulmanes, ni chinos...)
   
   strF1 = "'20',mid_string(strFecha1,7,2),mid_string(strFecha1,1,2),mid_string(strFecha1,4,2)"
   strF2 = "'20',mid_string(strFecha2,7,2),mid_string(strFecha2,1,2),mid_string(strFecha2,4,2)"

   if (strF1 > strF2) return 1
   if (strF1 < strF2) return (-1)   
   return 0
}

define_function sinteger CTDiasEntreFechas (char strFechaEntrada1[], char strFechaEntrada2[])
{
local_var sinteger snComp
local_var char strF1[10],strF2[10]
local_var sinteger snDias, snDia1, snDia2, snMes1, snMes2, snAno1, snAno2

   snComp = CTCompararFechas(strFechaEntrada1,strFechaEntrada2)
   if (snComp == 0) return 0
   if (snComp > 0) {strF2=strFechaEntrada1; strF1=strFechaEntrada2}
   else            {strF1=strFechaEntrada1; strF2=strFechaEntrada2}
   
   snDia1 = date_to_day(strF1); snMes1 = date_to_month(strF1); snAno1 = date_to_year(strF1) + type_cast(2000)
   snDia2 = date_to_day(strF2); snMes2 = date_to_month(strF2); snAno2 = date_to_year(strF2) + type_cast(2000)
   
   // Evita cuelgues por culpa de parámetros mal pasados.
   if ((snDia1<0) or (snMes1<0) or (snAno1<0)) return 0
   if ((snDia2<0) or (snMes2<0) or (snAno2<0)) return 0
   
   snDias = 0
   
   while((snMes1 <> snMes2) or (snAno1<>snAno2))
   {
      snDias = snDias + type_cast(_DIAS_MES[type_cast(snMes1)])
      if (snMes1 = 2) if (CTAnyoBisiesto(type_cast(snAno2))) snDias++ // El rollo de los bisiestos.
      snMes1++; if (snMes1>12) {snMes1 = 1; snAno1++}
   }
   
   snDias = snDias + snDia2 - snDia1
   
   return snDias
}

define_function char [10] CTSumarDiasAFecha (char strFecha[], sinteger snDiasAvance)
{
local_Var char strDia[2],strMes[2],strAno[2]
local_var sinteger snDia,snMes,snAno
local_var sinteger snQuedan, snDiaNuevo
local_var integer  nDiasMes

   snDia = date_to_day  (strFecha)
   snMes = date_to_month(strFecha)
   snAno = date_to_year (strFecha)+type_cast(2000)
   
   snQuedan = snDiasAvance
   
   while (snQuedan <> 0)
   {
      snDiaNuevo = snDia + snQuedan
      nDiasMes = _DIAS_MES[type_cast(snMes)]; if(snMes = 2) if (CTAnyoBisiesto(type_cast(snAno))) nDiasMes++
      
      if (snDiaNuevo > type_cast(nDiasMes))
      {
         snQuedan = snQuedan - (1+type_cast(_DIAS_MES[type_cast(snMes)])-snDia)
         snDia = 1
         snMes ++; if (snMes>12) {snMes = 1; snAno++}
      }
      else if (snDiaNuevo < 0)
      {
         snQuedan = snQuedan + (snDia)
         snMes --; if (snMes = 0) { snMes = 12; snAno --}
         snDia = type_cast(_DIAS_MES[type_Cast(snMes)]); if(snMes = 2) if (CTAnyoBisiesto(type_cast(snAno))) nDiasMes++
      }
      else
      {
         snDia = snDia + snQuedan
         snQuedan = 0
      }
   }
   strDia = right_String ("'00',itoa(snDia)",2)
   strMes = right_String ("'00',itoa(snMes)",2)
   strAno = right_String ("'00',itoa(snAno)",2)
   return "strMes,'/',strDia,'/',strAno"
}

define_function char [10] CTDiaSiguiente (char strFecha[])
{
   local_var nDia, nMes, nAno
   local_var strDia[2],strMes[2],strAno[2]
   nDia = type_cast(date_to_day   (strFecha))
   nMes = type_cast(date_to_month (strFecha))
   nAno = type_cast(date_to_year  (strFecha)) + 2000
   nDia ++
   if (nDia > _DIAS_MES[nMes])
   {
      if ((nMes <> 2) or (!CTAnyoBisiesto(nAno)))
      { 
         nDia = 1
         nMes ++
         if (nMes>12) {nMes=1;nAno++}
      }
   }
   strDia = right_string ("'00',itoa(nDia)",2)
   strMes = right_string ("'00',itoa(nMes)",2)
   strAno = right_string ("'00',itoa(nAno)",2)
   
   return "strMes,'/',strDia,'/',strAno"
}

define_function char [10] CTDiaAnterior (char strFecha[])
{
   local_var nDia, nMes, nAno
   local_var strDia[2],strMes[2],strAno[2]
   nDia = type_cast(date_to_day   (strFecha))
   nMes = type_cast(date_to_month (strFecha))
   nAno = type_cast(date_to_year  (strFecha)) + 2000
   nDia --
   if (nDia = 0)
   {
      nMes --;
      if (nMes = 0)
      {
         nMes = 12
         nAno --
      }
      nDia = _DIAS_MES[nMes]
      if (nMes = 2) if (CTAnyoBisiesto(nAno)) nDia ++
   }
   strDia = right_string ("'00',itoa(nDia)",2)
   strMes = right_string ("'00',itoa(nMes)",2)
   strAno = right_string ("'00',itoa(nAno)",2)
   
   return "strMes,'/',strDia,'/',strAno"
}



#END_IF