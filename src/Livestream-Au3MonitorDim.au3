; compiler information for AutoIt
#pragma compile(CompanyName, © SOLVE SMART)
#pragma compile(FileVersion, 1.1.0)
#pragma compile(LegalCopyright, © Sven Seyfert)
#pragma compile(ProductName, Livestream-Au3MonitorDim)
#pragma compile(ProductVersion, 1.1.0 - 2022-02-10)

#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\Livestream-Au3MonitorDim.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y



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
