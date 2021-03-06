; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design MOD
; Description ...: This file Includes GUI Design
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........:
; Modified ......: Lakereng (2016) And Extreme DE Side MOD
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

$tabMOD = GUICtrlCreateTabItem("Mods")
	;;;;;;;;;;;;;;;;;
    ;;; Mult-Farming
    ;;;;;;;;;;;;;;;;;
	Local $x = 215, $y = 215
	$grpMultyFarming = GUICtrlCreateGroup(GetTranslated(17,1, "Multy-Farming"), $x - 20, $y - 20, 100, 70)
	$x -= 10
		$chkMultyFarming = GUICtrlCreateCheckbox(GetTranslated(17,1, "Multy-Farming"), $x - 5, $y -7, -1 , -1)
			$txtTip = GetTranslated(17,3, "Will switch account and attack, then switch back")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "MultiFarming")
		$chkSwitchDonate = GUICtrlCreateCheckbox(GetTranslated(6,1, "Donate"), $x - 5, $y + 10, -1, -1)
			$txtTip = GetTranslated(17,4, "Will switch account For Donate, then switch back")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "SwitchAndDonate")
		$Account = GUICtrlCreateInput("2", $x +70, $y + 28, 15, 15, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(17,5, "How many account to use For multy farming")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 4)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblmultyAcc = GUICtrlCreateLabel(GetTranslated(17,2, "How Many:"), $x -5, $y + 29, -1, -1)
		   	GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)

    Local $x = 215, $y = 150
    $grpStatsMisc = GUICtrlCreateGroup(GetTranslated(17,6, "Smart Zap Drill"), $x - 20, $y - 20, 155, 65)
		 GUICtrlCreateIcon($pIconLib, $eIcnLightSpell, $x - 10, $y +5, 24, 24)
		 $chkSmartLightSpell = GUICtrlCreateCheckbox("", $x + 20, $y, 17, 17)
			$txtTip = GetTranslated(17,7, "Check this to drop lightning spells on DE drills")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "SmartLightSpell")
		 $txtMinDark = GUICtrlCreateInput("1000", $x + 20, $y + 20, 35, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(17,8, "Input The Min Dark Elixer You Want To Drill Zap")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 4)
			GUICtrlSetOnEvent(-1, "txtMinDark")
			GUICtrlSetState(-1, $GUI_DISABLE)
			$x += 35
	;Local $x = 365, $y = 150
	;   $grpStatuszap = GUICtrlCreateGroup("Status", $x, $y - 20, 100, 65)
		$picSmartZap = GUICtrlCreateIcon($pIconLib, $eIcnDark, $x + 75, $y - 8, 21, 21)
		$lblSmartZap = GUICtrlCreateLabel("0", $x -10, $y - 5, 80, 30, $SS_RIGHT)
		GUICtrlSetFont(-1, 12, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
		GUICtrlSetColor(-1, 0x279B61)
		$txtTip = GetTranslated(17,9, "The amount of Dark Elixir you zapped.")
	    GUICtrlSetTip(-1, $txtTip)
		GUICtrlCreateIcon($pIconLib, $eIcnLightSpell, $x + 75, $y + 17, 21, 21)
		$lblLightningUsed = GUICtrlCreateLabel("0", $x -10, $y + 20, 80, 30, $SS_RIGHT)
		GUICtrlSetFont(-1, 12, $FW_BOLD, Default, "arial", $CLEARTYPE_QUALITY)
		GUICtrlSetColor(-1,0x279B61)
		$txtTip = GetTranslated(17,10, "The amount of Lightning Spells Used in zapping.")
	    GUICtrlSetTip(-1, $txtTip)
;~~ Smart Dead Base
	Local $x = 30, $y = 215
	  $grpDeadbasefilter = GUICtrlCreateGroup(GetTranslated(17,11, "Smart Dead Base"), $x -20, $y - 20, 180, 70)
		$SmartDeadBase = GUICtrlCreateCheckbox(GetTranslated(17,12, "Attack On:"), $x -5, $y - 5, -1, -1)
			$txtTip = GetTranslated(17,13, "Change to Side Attack if less than % of collectors near RED LINE.")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "SmartDeadBase")
;		$lblSmartDBDeploy = GUICtrlCreateLabel(GetTranslated(3,3, -1) & ":", $x, $y + 5, -1, -1)
		$cmbSmartDB = GUICtrlCreateCombo("", $x + 75, $y - 7, 80, 25, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$txtTip = GetTranslated(17,14, "Sellect Side attack")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetData(-1, GetTranslated(17,15, "Mine Side") & "|" & GetTranslated(17,16, "DE Side") & "|" & GetTranslated(17,17, "TH Side"), GetTranslated(17,15, "Mine Side"))
			GUICtrlSetState(-1, $GUI_DISABLE)

		$y += 25
		$lblSmartDBcol = GUICtrlCreateLabel(GetTranslated(17,18, "collector:"), $x + 85, $y -5, -1, -1)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtSmartCollectors = GUICtrlCreateInput("20", $x +130, $y -7, 20, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(17,19, "if less % of collectors near RED LINE. change to side attack")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 100)
			GUICtrlSetState(-1, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "SmartCollectors")
		$lblSmartDBPerc = GUICtrlCreateLabel("%", $x + 150, $y -5, -1, -1)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$lblSmartDBNear = GUICtrlCreateLabel(GetTranslated(17,20, "Near RED Line:"), $x -15, $y -5, -1, -1)
			GUICtrlSetState(-1, $GUI_DISABLE)
		$txtSmartNear = GUICtrlCreateInput("51", $x +60, $y -7, 20, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = GetTranslated(17,21, "setting Near RED LINE Of Collector. Default is 51")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 10)
			GUICtrlSetState(-1, $GUI_DISABLE)
			GUICtrlSetOnEvent(-1, "SmartNear")

	Local $x = 15, $y = 265
		$grpCoCStats = GUICtrlCreateGroup("", $x, $y, 445, 35)
	$y += 10
		$chkCoCStats = GUICtrlCreateCheckbox(GetTranslated(17,22, "CoCStats Activate"), $x+5 , $y , -1, -1)
			$txtTip = GetTranslated(17,23, "Activate sending raid results to CoCStats.com")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkCoCStats")
	$x += 130
		$lblAPIKey = GUICtrlCreateLabel(GetTranslated(17,24, "API Key :"), $x, $y+5 , -1, 21, $SS_LEFT)
			$txtAPIKey = GUICtrlCreateInput("", $x + 40, $y , 270, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			$txtTip = GetTranslated(17,25, "Join in CoCStats.com and input API Key here")
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "txtAPIKey")

	Local $x = 30, $y = 150
		$grpDesideFilter = GUICtrlCreateGroup(GetTranslated(17,33, "DE Side Filter"), $x - 20, $y - 20, 180, 65)
			GUICtrlCreateIcon($pIconLib, $eIcnKing, $x, $y, 24, 24)
				$txtTip = GetTranslated(17,34, "Check this to Filter De Side Attack If No available King And Attack Dead Base Only")
				GUICtrlSetTip(-1, $txtTip)
			$chkDeKingFilter = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
				GUICtrlSetOnEvent(-1, "LBHeroFilter")
			$x += 50
			GUICtrlCreateIcon($pIconLib, $eIcnQueen, $x, $y, 24, 24)
				$txtTip = GetTranslated(17,35, "Check this to Filter De Side Attack If No available Queen And Attack Dead Base Only")
				GUICtrlSetTip(-1, $txtTip)
			$chkDeQueenFilter = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
				GUICtrlSetOnEvent(-1, "LBHeroFilter")
			$x += 50
			GUICtrlCreateIcon($pIconLib, $eIcnWarden, $x, $y, 24, 24)
				$txtTip = GetTranslated(17,36, "Check this to Filter De Side Attack If No available Warden And Attack Dead Base Only")
				GUICtrlSetTip(-1, $txtTip)
			$chkDeWardenFilter = GUICtrlCreateCheckbox("", $x + 30, $y,17, 17)
				GUICtrlSetTip(-1, $txtTip)
				GUICtrlSetOnEvent(-1, "LBHeroFilter")
	Local $x = 310, $y = 208
		$grpAutoTrainSpell = GUICtrlCreateGroup(GetTranslated(17,37, "Auto Train Spell"), $x - 10, $y - 13, 160, 70)
			GUICtrlCreateIcon($pIconLib, $eIcnLightSpell, $x, $y, 24, 24)
				$txtTip = GetTranslated(14,39, -1)
				GUICtrlSetTip(-1, $txtTip)
			$chkTrainLightSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
			$x +=50
			GUICtrlCreateIcon($pIconLib, $eIcnHealSpell, $x, $y, 24, 24)
				$txtTip = GetTranslated(14,40, -1)
				GUICtrlSetTip(-1, $txtTip)
			$chkTrainHealSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
			$x +=50
			GUICtrlCreateIcon($pIconLib, $eIcnRageSpell, $x, $y, 24, 24)
				$txtTip = GetTranslated(14,41, -1)
				GUICtrlSetTip(-1, $txtTip)
			$chkTrainRageSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
			$x +=50
;~				GUICtrlCreateIcon($pIconLib, $eIcnJumpSpell , $x, $y, 24, 24)
;~				$txtTip =GetTranslated(14,42, -1)
;~				GUICtrlSetTip(-1, $txtTip)
;~			$chkTrainJumpSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
;~				GUICtrlSetTip(-1, $txtTip)
			$y += 27
			$x -= 150
			GUICtrlCreateIcon($pIconLib, $eIcnFreezeSpell , $x, $y, 24, 24)
				$txtTip = GetTranslated(14,43, -1)
				GUICtrlSetTip(-1, $txtTip)
			$chkTrainFreezeSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
			$x +=50
			GUICtrlCreateIcon($pIconLib, $eIcnPoisonSpell , $x, $y, 24, 24)
				$txtTip = GetTranslated(14,44, -1)
				GUICtrlSetTip(-1, $txtTip)
			$chkTrainPoisonSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
			$x +=50
			GUICtrlCreateIcon($pIconLib, $eIcnEarthquakeSpell , $x, $y, 24, 24)
				$txtTip = GetTranslated(14,45, -1)
				GUICtrlSetTip(-1, $txtTip)
			$chkTrainEarthquakeSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
				GUICtrlSetTip(-1, $txtTip)
;~			$x +=50
;~				GUICtrlCreateIcon($pIconLib, $eIcnHasteSpell, $x, $y, 24, 24)
;~				$txtTip =GetTranslated(14,46, -1)
;~				GUICtrlSetTip(-1, $txtTip)
;~			$chkTrainHasteSpell = GUICtrlCreateCheckbox("", $x + 30, $y, 17, 17)
;~				GUICtrlSetTip(-1, $txtTip)
	Local $x = 380, $y = 150
		$grpHeroFilterSwitch = GUICtrlCreateGroup(GetTranslated(17,38, "Advanced Search"), $x - 20, $y - 20, 100, 55)
		$btnHeroSwitch = GUICtrlCreateButton(GetTranslated(17,39, "Normal Filters"), $x - 15, $y - 5, 90, 35)
			IF $btnColor then GUICtrlSetBkColor(-1, 0x5CAD85)
			GUICtrlSetOnEvent($btnHeroSwitch, "hideAdvanced")
			GUICtrlSetState($btnHeroSwitch, $GUI_HIDE)
		$btnNormalSwitch = GUICtrlCreateButton(GetTranslated(17,40, "Advanced Filters"), $x - 15, $y - 5, 90, 35)
			IF $btnColor then GUICtrlSetBkColor(-1, 0xDB4D4D)
			GUICtrlSetOnEvent($btnNormalSwitch, "hidehero")

	Local $x = 30, $y = 150
	$grpSkipCentreDE = GUICtrlCreateGroup(GetTranslated(17,41, "Skip Centre DE"), $x - 20, $y - 20, 170, 55)
	GUICtrlSetState (-1, $GUI_HIDE)
		$cmbSkipCentreDE = GUICtrlCreateCombo("", $x - 15 , $y, 160, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$txtTip = GetTranslated(17,42, "Always attack centre DE storage no filter") & @CRLF & _
						GetTranslated(17,43, "Always skip base when DE is in the centre.") & @CRLF & GetTranslated(17,44, "Only skip centre DE base if either BK or AQ filter enabled and they are healing.")
			GUICtrlSetData(-1, GetTranslated(17,45, "Always Attack Centre DE") & "|" & GetTranslated(17,46, "Always Skip Centre DE") & "|" & GetTranslated(17,47, "Skip When BK/AQ Sleeping"), GetTranslated(17,45, "Always Attack Centre DE"))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState (-1, $GUI_HIDE)


	$x = 205
	$grpSkipUndetectedDE = GUICtrlCreateGroup(GetTranslated(17,48, "Skip Undetected DE"), $x - 20, $y - 20, 170, 55)
	GUICtrlSetState (-1, $GUI_HIDE)
		$cmbSkipUndetectedDE = GUICtrlCreateCombo("", $x - 15 , $y, 160, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$txtTip = GetTranslated(17,49, "Always attack undetected DE storage no filter") & @CRLF & _
						GetTranslated(17,50, "Always skip base when DE is not found.") & @CRLF & GetTranslated(17,51, "Only skip undetected DE base if either BK or AQ filter enabled and they are healing.")
			GUICtrlSetData(-1, GetTranslated(17,52, "Always Attack Undetected DE") & "|" & GetTranslated(17,53, "Always Skip Undetected DE") & "|" & GetTranslated(17,54, "Skip When BK/AQ Sleeping"), GetTranslated(17,53, "Always Skip Undetected DE"))
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetState (-1, $GUI_HIDE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

		Local $x = 30, $y = 210
			$grpLiveBaseConditionsKing = GUICtrlCreateGroup(GetTranslated(17,55, "King Filter"), $x - 20, $y - 20, 225, 130)
			GUICtrlSetState (-1, $GUI_HIDE)
			GUICtrlCreateIcon($pIconLib, $eIcnKing, $x +30, $y +40, 24, 24)
			GUICtrlSetState (-1, $GUI_HIDE)
			$chkLBBKFilter = GUICtrlCreateCheckbox(GetTranslated(17,56, "Enable For BK"), $x + 70, $y + 45, -1, -1)
				$txtTip = GetTranslated(17,57, "Enable this so that when King is healing bot will use new search conditions for Live Bases")
				GUICtrlSetTip(-1, $txtTip)
				GUICtrlSetState(-1, $GUI_HIDE)
				GUICtrlSetOnEvent(-1, "chkLBBKFilter")
			$grpLiveBaseConditionsQueen = GUICtrlCreateGroup(GetTranslated(17,58, "Queen Filter"), $x - 20, $y + 110, 225, 125)
			GUICtrlSetState (-1, $GUI_HIDE)
			GUICtrlCreateIcon($pIconLib, $eIcnQueen, $x +30, $y +160, 24, 24)
			GUICtrlSetState (-1, $GUI_HIDE)
			$chkLBAQFilter = GUICtrlCreateCheckbox(GetTranslated(17,59, "Enable For AQ"), $x + 70, $y + 165, -1, -1)
				$txtTip = GetTranslated(17,60, "Enable this so that when Queen is healing bot will use new search conditions for Live Bases")
				GUICtrlSetTip(-1, $txtTip)
				GUICtrlSetState(-1, $GUI_HIDE)
				GUICtrlSetOnEvent(-1, "chkLBBKFilter")

		Local $x = 260, $y = 210
			;Hero Heal Feature.
				$grpLiveBaseConditionsHero = GUICtrlCreateGroup(GetTranslated(17,61, "LiveBase No Hero Filter Conditions"), $x - 20, $y - 20, 220, 255)
				GUICtrlSetState (-1, $GUI_HIDE)
				$y += 21
				$cmbABMeetGEHero = GUICtrlCreateCombo("", $x , $y + 10, 65, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
					$txtTip = GetTranslated(2,19, "Search for a base that meets the values set for Gold And/Or/Plus Elixir.") & @CRLF & GetTranslated(2,20, "AND: Both conditions must meet, Gold and Elixir.") & @CRLF & GetTranslated(2,21, "OR: One condition must meet, Gold or Elixir.") & @CRLF & GetTranslated(2,22, "+ (PLUS): Total amount of Gold + Elixir must meet.")
					GUICtrlSetData(-1, GetTranslated(2,23, "G And E") &"|" & GetTranslated(2,24, "G Or E") & "|" & GetTranslated(2,25, "G + E"), GetTranslated(2,23, "G And E"))
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetOnEvent(-1, "cmbABGoldElixirHero")
					GUICtrlSetState (-1, $GUI_HIDE)
				$txtABMinGoldHero = GUICtrlCreateInput("80000", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
					$txtTip = GetTranslated(2,26, "Set the Min. amount of Gold to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetLimit(-1, 6)
					GUICtrlSetState (-1, $GUI_HIDE)
				$picABMinGoldHero = GUICtrlCreateIcon($pIconLib, $eIcnGold, $x + 131, $y, 16, 16)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y += 21
				$txtABMinElixirHero = GUICtrlCreateInput("80000", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
					$txtTip = GetTranslated(2,27, "Set the Min. amount of Elixir to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetLimit(-1, 6)
					GUICtrlSetState (-1, $GUI_HIDE)
				$picABMinElixirHero = GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x + 131, $y, 16, 16)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y -= 11
				$txtABMinGoldPlusElixirHero = GUICtrlCreateInput("160000", $x + 80, $y, 50, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
					$txtTip = GetTranslated(2,28, "Set the Min. amount of Gold + Elixir to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetLimit(-1, 6)
					GUICtrlSetState (-1, $GUI_HIDE)
				$picABMinGPEGoldHero = GUICtrlCreateIcon($pIconLib, $eIcnGold, $x + 131, $y + 1, 16, 16)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$lblABMinGPEHero = GUICtrlCreateLabel("+", $x + 147, $y + 1, -1, -1)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$picABMinGPEElixirHero = GUICtrlCreateIcon($pIconLib, $eIcnElixir, $x + 153, $y + 1, 16, 16)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y += 31
				$chkABMeetDEHero = GUICtrlCreateCheckbox(GetTranslated(2,29, "Dark Elixir"), $x , $y, -1, -1)
					$txtTip = GetTranslated(2,30, "Search for a base that meets the value set for Min. Dark Elixir.")
					GUICtrlSetOnEvent(-1, "chkABMeetDEHero")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$txtABMinDarkElixirHero = GUICtrlCreateInput("0", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
					$txtTip = GetTranslated(2,31, "Set the Min. amount of Dark Elixir to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetLimit(-1, 5)
					GUICtrlSetState (-1, $GUI_HIDE)
					_GUICtrlEdit_SetReadOnly(-1, True)
				$picABMinDarkElixirHero = GUICtrlCreateIcon($pIconLib, $eIcnDark, $x + 131, $y, 16, 16)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y += 21
				$chkABMeetTrophyHero = GUICtrlCreateCheckbox(GetTranslated(2,32, "Trophies"), $x, $y, -1, -1)
					$txtTip = GetTranslated(2,33, "Search for a base that meets the value set for Min. Trophies.")
					GUICtrlSetOnEvent(-1, "chkABMeetTrophyHero")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$txtABMinTrophyHero = GUICtrlCreateInput("0", $x + 80, $y, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
					$txtTip = GetTranslated(2,34, "Set the Min. amount of Trophies to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
					_GUICtrlEdit_SetReadOnly(-1, True)
					GUICtrlSetLimit(-1, 2)
				$picABMinTrophiesHero = GUICtrlCreateIcon($pIconLib, $eIcnTrophy, $x + 131, $y, 16, 16)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y += 21
				$chkABMeetTHHero = GUICtrlCreateCheckbox(GetTranslated(2,35, "Townhall"), $x, $y, -1, -1)
					$txtTip = GetTranslated(2,36, "Search for a base that meets the value set for Max. Townhall Level.")
					GUICtrlSetOnEvent(-1, "chkABMeetTHHero")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$cmbABTHHero = GUICtrlCreateCombo("", $x + 80, $y - 1, 50, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
					$txtTip = GetTranslated(2,37, "Set the Max. level of the Townhall to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState(-1, $GUI_DISABLE)
					GUICtrlSetState (-1, $GUI_HIDE)
					GUICtrlSetData(-1, "4-6|7|8|9|10|11", "4-6")
				$picABMaxTH1Hero = GUICtrlCreateIcon($pIconLib, $eIcnTH1, $x + 131, $y - 3, 24, 24)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$lblABMaxTHHero = GUICtrlCreateLabel("-", $x + 156, $y + 1, -1, -1)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$picABMaxTH10Hero = GUICtrlCreateIcon($pIconLib, $eIcnTH10, $x + 160, $y - 3, 24, 24)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y += 21
				$chkABMeetTHOHero = GUICtrlCreateCheckbox(GetTranslated(2,38, "Townhall outside"), $x, $y, -1, -1)
					$txtTip = GetTranslated(2,39, "Search for a base that has an exposed Townhall. (Outside of Walls)")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y += 21
				$chkABWeakBaseHero = GUICtrlCreateCheckbox(GetTranslated(2,40, "WeakBase"), $x, $y, -1, -1)
					$txtTip = GetTranslated(2,41, "Search for a base that has low defences.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
					GUICtrlSetOnEvent(-1, "chkABWeakBaseHero")
				$cmbABWeakMortarHero = GUICtrlCreateCombo("", $x + 80, $y, 50, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
					$txtTip = GetTranslated(2,42, "Set the Max. level of the Mortar to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetData(-1, "-|Lvl 1|Lvl 2|Lvl 3|Lvl 4|Lvl 5|Lvl 6|Lvl 7|Lvl 8", "Lvl 5")
					GUICtrlSetState(-1, $GUI_DISABLE)
					GUICtrlSetState (-1, $GUI_HIDE)
				$picABWeakMortarHero = GUICtrlCreateIcon($pIconLib, $eIcnMortar, $x + 131, $y - 3, 24, 24)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y +=23
				$cmbABWeakWizTowerHero = GUICtrlCreateCombo("", $x + 80, $y, 50, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
					$txtTip = GetTranslated(2,43, "Set the Max. level of the Wizard Tower to search for on a village to attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetData(-1, "-|Lvl 1|Lvl 2|Lvl 3|Lvl 4|Lvl 5|Lvl 6|Lvl 7|Lvl 8", "Lvl 4")
					GUICtrlSetState(-1, $GUI_DISABLE)
					GUICtrlSetState (-1, $GUI_HIDE)
				$picABWeakWizTowerHero = GUICtrlCreateIcon($pIconLib, $eIcnWizTower, $x + 131, $y - 2, 24, 24)
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				$y += 30
				$chkABMeetOneHero = GUICtrlCreateCheckbox(GetTranslated(2,44, "Meet One Then Attack"), $x, $y, -1, -1)
					$txtTip = GetTranslated(2,45, "Just meet only ONE of the above conditions, then Attack.")
					GUICtrlSetTip(-1, $txtTip)
					GUICtrlSetState (-1, $GUI_HIDE)
				For $i = $grpLiveBaseConditionsKing To $chkABMeetOne
					GUICtrlSetState($i, $GUI_HIDE)
				Next
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")
