Func _SetBackgroundColor($vColor)
    GUISetBkColor($vColor, $hGui)
EndFunc

Func _SetTransparency()
    WinSetTrans($hGui, '', Abs($iTransparency))
    ToolTip($iTransparency, 5, 5)
EndFunc
