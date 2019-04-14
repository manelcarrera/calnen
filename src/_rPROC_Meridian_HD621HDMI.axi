PROGRAM_NAME='_rPROC_Meridian_HD621HDMI'

DEFINE_CONSTANT


CMD_PROC_A_CD 		= 1
CMD_PROC_A_RADIO	= 2
CMD_PROC_A_DVD 	= 3
CMD_PROC_A_AUX 	= 4
CMD_PROC_A_DISC 	= 5
CMD_PROC_A_TAPE 	= 6
CMD_PROC_A_TV 		= 7
CMD_PROC_A_CABLE 	= 8
CMD_PROC_A_SAT 	= 9
CMD_PROC_A_VCR1 	= 10
CMD_PROC_A_VCR2 	= 11
CMD_PROC_A_GAME 	= 12

DEFINE_VARIABLE

sCmdProcA[ 50 ][ LEN_CMD_DVD ]

DEFINE_START

sCmdProcA[ CMD_PROC_A_CD ] 	= "'CD',$0d"
sCmdProcA[ CMD_PROC_A_RADIO ] = "'RD',$0d"
sCmdProcA[ CMD_PROC_A_DVD ] 	= "'DV',$0d"
sCmdProcA[ CMD_PROC_A_AUX ] 	= "'AX',$0d"
sCmdProcA[ CMD_PROC_A_DISC ] 	= "'DC',$0d"
sCmdProcA[ CMD_PROC_A_TAPE ] 	= "'TA',$0d"
sCmdProcA[ CMD_PROC_A_TV ] 	= "'TV',$0d"
sCmdProcA[ CMD_PROC_A_CABLE ] = "'CB',$0d"
sCmdProcA[ CMD_PROC_A_SAT ] 	= "'SA',$0d"
sCmdProcA[ CMD_PROC_A_VCR1 ] 	= "'V1',$0d"
sCmdProcA[ CMD_PROC_A_VCR2 ] 	= "'V2',$0d"
sCmdProcA[ CMD_PROC_A_GAME ] 	= "'GA',$0d"





