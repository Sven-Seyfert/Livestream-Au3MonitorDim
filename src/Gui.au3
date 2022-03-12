Func _ShowGui()
    $hGui = GUICreate('', @DesktopWidth, @DesktopHeight * 1.1, Default, Default, $WS_POPUP, $WS_EX_TRANSPARENT)

    _SetBackgroundColor($vLightColor)
    _SetTransparency()

    WinSetOnTop($hGui, '', 1)
    GUISetState(@SW_SHOW, $hGui)
EndFunc
