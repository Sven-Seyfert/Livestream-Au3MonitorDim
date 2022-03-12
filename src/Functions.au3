Func _IncreaseTransparency()
    $iTransparency += $iFactor
EndFunc

Func _DecreaseTransparency()
    $iTransparency -= $iFactor
EndFunc

Func _Lighten()
    _IncreaseTransparency()

    If $iTransparency >= $iMin And $iTransparency <= $iMax Then
        _SetBackgroundColor($vLightColor)
        _SetTransparency()
    EndIf

    If $iTransparency <= $iMin And $iTransparency >= -$iMax Then
        _SetTransparency()
    EndIf

    If $iTransparency > $iMax Then
        $iTransparency = $iMax
    EndIf
EndFunc

Func _Darken()
    _DecreaseTransparency()

    If $iTransparency >= $iMin And $iTransparency <= $iMax Then
        _SetTransparency()
    EndIf

    If $iTransparency <= $iMin And $iTransparency >= -$iMax Then
        _SetBackgroundColor($vDarkColor)
        _SetTransparency()
    EndIf

    If $iTransparency < -$iMax Then
        $iTransparency = -$iMax
    EndIf
EndFunc

Func _Reset()
    $iTransparency = 0
    _SetTransparency()
EndFunc
