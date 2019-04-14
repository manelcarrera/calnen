PROGRAM_NAME='_PAG'

DEFINE_CONSTANT
DEFINE_VARIABLE

//-----------------------------------------------------------------------
define_function popup_m( char message[] )
//-----------------------------------------------------------------------
{
	 send_command 0, "'popup_m( ',message, ' )'"
	 send_command dvTp, "'^TXT-1,0,', message"
	 send_command dvTp, "'@PPN-Mensajes'"
}

//-----------------------------------------------------------------------
define_function popup( char pPage[] )
//-----------------------------------------------------------------------
{
	 send_command 0, "'popup( ',pPage,' )'"
	 send_command dvTp, "'@PPN-',pPage"
}

//-----------------------------------------------------------------------
define_function hide( char pPage[] )
//-----------------------------------------------------------------------
{
	 send_command 0, "'hide( ',pPage,' )'"
	 send_command dvTp, "'@PPF-',pPage"
	 //send_command dvTp, "'@PPOF-',pPage"
}

//-----------------------------------------------------------------------
define_function page( integer pPage )
//-----------------------------------------------------------------------
{
	 //send_string 0, "'-> pPage[ ', itoa( pPage ),' ]'"
	 send_string 0, "'-> ', asPaginaD[ pPage ]"
	 
	 send_command dvTp, "'PAGE-',asPagina[ pPage ]"
	 
	 
	 if( m_estado.page != PAG_LUCES &&
		  m_estado.page != PAG_LUCES_PRESETS &&
		  m_estado.page != PAG_MOTORES &&
		  m_estado.page != pPage ) 
	 {
		  m_estado.pageA = m_estado.page
		  send_string 0, "'pageA[ ', asPaginaD[ m_estado.pageA ], ' ]'"
	 }

	 m_estado.page = pPage
}



