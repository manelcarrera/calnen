PROGRAM_NAME='_Colas'

DEFINE_CONSTANT

integer FREE           		= 1
integer WAITING_READY  		= 2
integer WAITING_EXECUTION 	= 3
integer WAITING_WAIT    	= 4
integer WAITING_RESPONSE  	= 5

integer LEN_COLA        	= 128


DEFINE_TYPE

structure tCmd
{
   integer cmd
   integer param
   integer tExe
}

structure tCola
{
	 integer  head
	 integer  tail

	 integer estado

	 char sDevice[ 20 ]

	 tCmd 	cmds[ LEN_COLA ]
	 tCmd 	last
}


DEFINE_VARIABLE


define_function clearCola( tCola cola, char sDev[ 20 ] )
{
	 cola.head 		= 1
	 cola.tail 		= 1
	 cola.estado 	= FREE
	 cola.sDevice 	= sDev
}

define_function integer  ppush( tCola cola, integer cmd, integer tiempo )
{
	 local_var sCola
	 tCmd c

	 send_string 0, "'ppush(', cola.sDevice ,',', itoa( cmd ),',', itoa( tiempo ), ')'"

	 c.cmd 	= cmd
	 c.tExe 	= tiempo

	 ppush2( cola, c )
}

define_function integer  ppush_p( tCola cola, integer cmd, integer param, integer tiempo )
{
	 local_var sCola
	 tCmd c

	 send_string 0, "'ppush_p(', cola.sDevice ,',', itoa( cmd ),',', itoa( param ),',', itoa( tiempo ), ')'"

	 c.cmd 	= cmd
	 c.param = param
	 c.tExe 	= tiempo

	 ppush2( cola, c )
}

define_function integer  ppush2( tCola cola, tCmd cmd )
{
   cola.cmds[ cola.head ] = cmd
   
   cola.head++

   if( cola.head > max_length_array( cola.cmds ) )
      cola.head = 1
   
   return( cola.head != cola.tail )
}

define_function integer pop( tCola cola, tCmd cmd )
{
   if( cola.tail == cola.head )
      return 0;
      
   cmd = cola.cmds[ cola.tail ]
   
   cola.tail++

   if( cola.tail > max_length_array( cola.cmds) )
      cola.tail = 1
   
	 cola.last = cmd

	 return 1
}

/*
define_function MainLine()
{
   local_var tCmd cmd

	 switch( cola.estado )
	 {
		  //---------
		  case FREE:
		  //---------
				if( pop( cola, cmd ) )
				{
					  send_string 0, "ssCmdTv[ cmd.cmd ]"
					  cola.estado = WAITING_WAIT
				}
		  //---------
		  case WAITING_WAIT:
		  //---------
				if( cola.last.tExe )
				{
					  cola.estado = WAITING_EXECUTION
					  wait cola.last.tExe
						  cola.estado = FREE
				}
				else{ cola.estado = FREE }

		  //---------
		  case WAITING_EXECUTION:
		  //---------
	 }
}
*/


