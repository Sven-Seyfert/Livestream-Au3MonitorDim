Func _setBackgroundColor( $vColor )
    GUISetBkColor( $vColor, $hGui )
EndFunc

Func _setTransparency()
    WinSetTrans( $hGui, '', Abs( $iTransparency ) )
    ToolTip( $iTransparency, 5, 5 )
EndFunc
