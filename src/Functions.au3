Func _increase()
    $iTransparency += $iFactor
EndFunc

Func _decrease()
    $iTransparency -= $iFactor
EndFunc

Func _lighten()
    _increase()

    If $iTransparency >= $iMin And $iTransparency <= $iMax Then
        $vOverlayColor = $vLight
        _setBackgroundColor()
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
    _decrease()

    If $iTransparency >= $iMin And $iTransparency <= $iMax Then
        _setTransparency()
    EndIf

    If $iTransparency <= $iMin And $iTransparency >= -$iMax Then
        $vOverlayColor = $vDark
        _setBackgroundColor()
        _setTransparency()
    EndIf

    If $iTransparency < -$iMax Then
        $iTransparency = -$iMax
    EndIf
EndFunc
