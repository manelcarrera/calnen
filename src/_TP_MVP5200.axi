PROGRAM_NAME='_MVP5200'

DEFINE_CONSTANT

DEFINE_VARIABLE

define_function configBotones()
{
	 send_string 0, "'configBotones'"

	 /*//Esc
	 send_command dvTp,"'^BMF-1.4,0,%OP100'"

	 //Equipos
	 send_command dvTp,"'^BMF-11.21,0,%CF',COLOR_BG_NO_SELECTED" //BTN_TDT..BTN_RADIO, DarkAqua
	 send_command dvTp,"'^BMF-11.21,0,%OP0EN0'"*/

	 //Nuevo diseño


	 /*
	 //Esc
	 send_command dvTp,"'^BMF-1.4,1,%P',BITMAP_ESC_NO_SELECTED"

	 //Equipos
	 send_command dvTp,"'^BMF-11.21,1,%P',BITMAP_DEV_NO_SELECTED"

	 */
}


DEFINE_EVENT

data_event[ dvTp ]
{
    /*awake:
    {
		  send_string 0, "'dvTp-awake'"
	 }*/
    online:
    {
		  send_string 0, "'dvTp-online'"
		  send_string 0, "'----------------------------------------------------'"
		  if( isInit() ) //sólo tiene  que hacerlo en la primera conexión; FIXME: tal vez mejor con una variable estática
		  {
				configBotones()

				showPage( 					'01-General' )
				showPopup( 					'02-Menu-Ninguno' )
				
				setEscena( 					ESC_NINGUNA )	//esto toca el mando
				setPeticionEscena( 		ESC_NINGUNA )
				
				setEstadoPlus( 	MOVISTAR_PARADO )

				//setDevice( 					DEV_NINGUNO )	//esto también toca el mando

				setOrdenProyector( 0 ) //ningun comando en ejecucion
				setEstadoProyector( 		PROY_DISPONIBLE )

				//setMando( 					MANDO_NINGUNO )
				
				setVol( 40 )
				setLevel( 0 )

				//setFormato( 	ESC_FORMAT_4_3 )
				setFormatoP( 	PROY_FORMAT_50 )
				
				//setPantallaTV( false ) //2013-06-09, a ver si así va mejor
				//setGrupoCanales( BTN_GRUPO_CANALES_HD )

				On[ dvIOs, IO_LUZ_GENERAL ]

				SET_PULSE_TIME( 2 )

				setInit( 0 )

		  }
		  else
				send_string 0, "'dvTp-online: NO es init...'"
    }
}