#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\media\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\Livestream-Au3MonitorDim.exe
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Res_Description=Livestream-Au3MonitorDim (2021-04-12)
#AutoIt3Wrapper_Res_Fileversion=0.1.0.0
#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; compiler information for AutoIt



; opt and just singleton -------------------------------------------------------
Opt( 'MustDeclareVars', 1 )
Global $aInst = ProcessList( 'Livestream-Au3MonitorDim.exe' )
If $aInst[0][0] > 1 Then Exit



; includes ---------------------------------------------------------------------
#include-once
#include <WindowsConstants.au3>



; references -------------------------------------------------------------------
#include "Init.au3"
#include "Declaration.au3"
#include "Gui.au3"
#include "Functions.au3"
#include "GuiFunctions.au3"



; processing -------------------------------------------------------------------
_showGui()

While 1
    Switch GUIGetMsg()
        Case -3
            ToolTip( '' )

            Exit
    EndSwitch
WEnd
