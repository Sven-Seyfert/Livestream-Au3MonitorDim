Func _showGui()
    $hGui = GUICreate( '', @DesktopWidth, @DesktopHeight * 1.1, Default, Default, $WS_POPUP, $WS_EX_TRANSPARENT )

    _setBackgroundColor( $vLightColor )
    _setTransparency()

    WinSetOnTop( $hGui, '', 1 )
    GUISetState( @SW_SHOW, $hGui )
EndFunc
