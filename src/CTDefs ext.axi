PROGRAM_NAME='CTDefs ext'


DEFINE_CONSTANT

//___ Tipos de senales de video ____________________
integer _CT_VIDEO    = 1
integer _CT_YC       = 2
integer _CT_RGB      = 3
integer _CT_YUV      = 4
integer _CT_SDI      = 5
integer _CT_HDTV     = 6
integer _CT_LOGO     = 7
integer _CT_FIREWIRE = 8
integer _CT_PCMCIA   = 9
integer _CT_DVI      = 10
//__________________________________________________


//___ Comandos genericos ___________________________
integer _CT_CMD_FORMAT      = 7
integer _CT_CMD_CUSTOM      = 0
integer _CT_CMD_POWER       = 1
integer _CT_CMD_INPUT       = 2 
integer _CT_CMD_OUTPUT      = 3
integer _CT_CMD_VIDEO_MUTE  = 3
integer _CT_CMD_AUDIO_MUTE  = 4
integer _CT_CMD_GET_ERROR   = 5
integer _CT_CMD_CLEAR_ERROR = 6
integer _CT_CMD_REDIRECT    = 7
integer _CT_CMD_ASPECT      = 8
integer _CT_CMD_REMOTE      = 9
      integer _CT_16_9 = 1
      integer _CT_4_3  = 2
integer _CT_CMD_COLORTEMP   = 9
      integer _CT_TEMP_HI  = 1
      integer _CT_TEMP_LO  = 2
      integer _CT_TEMP_MED = 3
integer _CT_LAST_ERROR      = 10
integer _CT_CLEAR_ERROR     = 11
integer _CT_CMD_SWITCH      = 12
      char _CT_SW_AUDIO   = $01
      char _CT_SW_VIDEO   = $02
      char _CT_SW_YC      = $04
      char _CT_SW_YUV     = $08
      char _CT_SW_RGB     = $10   // No se diferencia sincronismo
      char _CT_SW_SDI     = $20
      char _CT_SW_FORMAT1 = $40   // Formato "raro" 1 (p.ej. CAT5).
      char _CT_SW_FORMAT2 = $80   // Formato "raro" 2
integer _CT_CMD_GET_STATUS  = 13
integer _CT_CMD_GET_LEVELS  = 14
integer _CT_CMD_VOLUME = 15
//__________________________________________________

   

//____ Distribucion de niveles _____________________
integer _CT_LEVEL_VOLUME     = 1
integer _CT_LEVEL_COLOR      = 2
integer _CT_LEVEL_BRIGHTNESS = 3
integer _CT_LEVEL_CONTRAST   = 4
integer _CT_LEVEL_SHARPNESS  = 5
integer _CT_LEVEL_TINT       = 6
integer _CT_LEVEL_R_GAIN     = 7
integer _CT_LEVEL_G_GAIN     = 8 
integer _CT_LEVEL_B_GAIN     = 9
integer _CT_LEVEL_ZOOM       = 10
integer _CT_LEVEL_FOCUS      = 11
//__________________________________________________

integer _CT_CMD_SET_SPEED      = 15
integer _CT_CMD_SET_ZOOM_SPEED = 16
      char _CT_SPEED_0      = 0
      char _CT_SPEED_25     = 64
      char _CT_SPEED_50     = 128
      char _CT_SPEED_75     = 192
      char _CT_SPEED_100    = 255
integer _CT_CMD_SAVE_PRESET    = 17
integer _CT_CMD_CALL_PRESET    = 18
integer _CT_CMD_SET_AUTOFOCUS  = 19
integer _CT_CMD_SET_AUTOIRIS   = 20

integer _CT_CMD_SURROUND_MODE = 21
      integer _CT_SRND_DOLBY        = 1
      integer _CT_SRND_DTS_SURROUND = 2
      integer _CT_SRND_DTS_NEO6     = 3
      integer _CT_SRND_LOGIC7       = 4
      integer _CT_SRND_STEREO       = 5


integer _CT_CH_BRIGHTNESS_UP   = 71
integer _CT_CH_BRIGHTNESS_DOWN = 72
integer _CT_CH_COLOR_UP        = 73
integer _CT_CH_COLOR_DOWN      = 74
integer _CT_CH_CONTRAST_UP     = 75
integer _CT_CH_CONTRAST_DOWN   = 76
integer _CT_CH_SHARPNESS_UP    = 77
integer _CT_CH_SHARPNESS_DOWN  = 78
integer _CT_CH_TINT_UP         = 79
integer _CT_CH_TINT_DOWN       = 80
integer _CT_CH_ZOOM_UP         = 81
integer _CT_CH_ZOOM_DOWN       = 82
integer _CT_CH_FOCUS_UP        = 83
integer _CT_CH_FOCUS_DOWN      = 84

integer _CT_CH_GAIN_R_UP      = 85
integer _CT_CH_GAIN_R_DOWN    = 86
integer _CT_CH_GAIN_G_UP      = 87
integer _CT_CH_GAIN_G_DOWN    = 88
integer _CT_CH_GAIN_B_UP      = 89
integer _CT_CH_GAIN_B_DOWN    = 90
integer _CT_CH_SHIFT_UP			= 91
integer _CT_CH_SHIFT_DOWN		= 92
integer _CT_CH_SATURATION_UP	= 93
integer _CT_CH_SATURATION_DOWN= 94
integer _CT_CH_LOGO				= 95

integer _CT_CH_COLTEMP_MED = 409


