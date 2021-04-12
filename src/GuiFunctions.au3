Func _setBackgroundColor()
    GUISetBkColor( $vOverlayColor, $hGui )
EndFunc

Func _setTransparency()
    WinSetTrans( $hGui, '', Abs( $iTransparency ) )
    ToolTip( $iTransparency, 5, 5 )
EndFunc
