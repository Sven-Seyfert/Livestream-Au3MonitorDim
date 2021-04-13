Func _increaseTransparency()
    $iTransparency += $iFactor
EndFunc

Func _decreaseTransparency()
    $iTransparency -= $iFactor
EndFunc

Func _lighten()
    _increaseTransparency()

    If $iTransparency >= $iMin And $iTransparency <= $iMax Then
        _setBackgroundColor( $vLightColor )
        _setTransparency()
    EndIf

    If $iTransparency <= $iMin And $iTransparency >= -$iMax Then
        _setTransparency()
    EndIf

    If $iTransparency > $iMax Then
        $iTransparency = $iMax
    EndIf
EndFunc

Func _darken()
    _decreaseTransparency()

    If $iTransparency >= $iMin And $iTransparency <= $iMax Then
        _setTransparency()
    EndIf

    If $iTransparency <= $iMin And $iTransparency >= -$iMax Then
        _setBackgroundColor( $vDarkColor )
        _setTransparency()
    EndIf

    If $iTransparency < -$iMax Then
        $iTransparency = -$iMax
    EndIf
EndFunc

Func _reset()
    $iTransparency = 0
    _setTransparency()
EndFunc
