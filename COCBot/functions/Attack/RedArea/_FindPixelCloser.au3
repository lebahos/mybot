;
; #FUNCTION# ====================================================================================================================
; Name ..........: _FindPixelCloser
; Description ...: Search the closer array of pixel in the array of pixel
; Syntax ........: _FindPixelCloser($arrPixel, $pixel[, $nb = 1])
; Parameters ....: $arrPixel            - an array of unknowns.
;                  $pixel               - a pointer value.
;                  $nb                  - [optional] a general number value. Default is 1.
; Return values .: None
; Author ........: didipe
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2016
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
Func _FindPixelCloser($arrPixel, $pixel, $nb = 1)

	If IsArray($arrPixel) = False Then Return ; Prevent error

	Local $arrPixelCloser[0]
	For $j = 0 To $nb
		Local $PixelCloser = $arrPixel[0]
		For $i = 0 To UBound($arrPixel) - 1
			$alreadyExist = False
			Local $arrTemp = $arrPixel[$i]
			Local $found = False
			;search closer only on y
			If ($pixel[0] = -1) Then
				If (Abs($arrTemp[1] - $pixel[1]) < Abs($PixelCloser[1] - $pixel[1])) Then
					$found = True
				EndIf
				;search closer only on x
			ElseIf ($pixel[1] = -1) Then
				If (Abs($arrTemp[0] - $pixel[0]) < Abs($PixelCloser[0] - $pixel[0])) Then
					$found = True
				EndIf
				;search closer on x/y
			Else
				If ((Abs($arrTemp[0] - $pixel[0]) + Abs($arrTemp[1] - $pixel[1])) < (Abs($PixelCloser[0] - $pixel[0]) + Abs($PixelCloser[1] - $pixel[1]))) Then
					$found = True
				EndIf
			EndIf
			If ($found) Then
				For $k = 0 To UBound($arrPixelCloser) - 1
					Local $arrTemp2 = $arrPixelCloser[$k]
					If ($arrTemp[0] = $arrTemp2[0] And $arrTemp[1] = $arrTemp2[1]) Then
						$alreadyExist = True
						ExitLoop
					EndIf
				Next
				If ($alreadyExist = False) Then
					$PixelCloser = $arrTemp
				EndIf
			EndIf
		Next
		ReDim $arrPixelCloser[UBound($arrPixelCloser) + 1]
		$arrPixelCloser[UBound($arrPixelCloser) - 1] = $PixelCloser

	Next
	If $iSmartDeadBase = 1 Then
		If $countFindPixCloser < UBound($PixelNearCollector) Then
			Local $DistancePixeltoPixCLoser = Sqrt(($PixelCloser[0]-$pixel[0])^2 + ($PixelCloser[1] - $pixel[1])^2)
			If $debugSetlog = 1 Then SetLog("the resource of " & $pixel[0] & "-" & $pixel[1] & " Distance is " & $DistancePixeltoPixCLoser, $COLOR_PURPLE)
			If $DistancePixeltoPixCLoser < $SmartNear Then $countCollectorexposed += 1
			If $debugSetlog = 1 Then SetLog("your near setting in " & $SmartNear)
			$countFindPixCloser += 1
		EndIf
	EndIf
	Return $arrPixelCloser
EndFunc   ;==>_FindPixelCloser
