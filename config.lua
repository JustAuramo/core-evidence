Config = {

-- IMPORTANT! To configure report text navigate to /html/script.js and find the text you want to replace

EvidenceReportInformationBullet = "firstname, lastname, job, sex", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)
EvidenceReportInformationFingerprint = "firstname, lastname, job, sex", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)
EvidenceReportInformationBlood = "firstname, lastname, job, sex", -- The information displayd from users table in mysql in the evidence report (ONLY CHANGE IF YOU KNOW WHAT ARE YOU DOING)

ShowBloodSplatsOnGround = true, -- Show blood on the ground when player is shot
PlayClipboardAnimation = true, -- Play clipboard animation when reading report

JobRequired = 'police', -- The job needed to use evidence system
JobGradeRequired = 0, -- The MINIMUM job grade required to use evidence system (If you use 0 all job grades can use the system)

CloseReportKey = 'BACKSPACE', -- The key used to close the report
PickupEvidenceKey = 'E', -- The key used to pick up evidence

EvidenceAlanysisLocation = vector3(483.89, -987.77, 30.69), -- The place where the evidence will be analyzed and report generated
TimeToAnalyze = 10000, -- Time in miliseconds to analyze the given evidence
TimeToFindFingerprints = 3000, -- Time in miliseconds to find fingerprints in a car

--UPDATE V2
RainRemovesEvidence = true, -- Removes evidence when it starts raining!
TimeBeforeCrimsCanDestory = 300, -- Seconds before Criminals can destroy evidence (300 is the time when evidence coolsdown and shows up as WARM)
EvidenceStorageLocation = vector3(2507.4296875,-354.43572998047,101.89334869385), -- The place where all evidence are being archived! You can view old evidence or delete it
--

Text = {

	--UPDATE V2
	['not_in_vehicle'] = 'To use this you need to be in a vehicle!',
	['remove_evidence'] = 'Destroy evidence [~r~E~w~]',
	['cooldown_before_pickup'] = 'The evidence is too fresh/hot to destroy',
	['evidence_removed'] = 'Evidence destroyed!',
	['open_evidence_archive'] = '[~b~E~w~] View evidence archive',
	['evidence_archive'] = 'Evidence Archive',
	['view'] = 'View',
	['delete'] = 'Delete',
	['report_list'] = 'Report #',
	['evidence_deleted_from_archive'] = 'Evidence deleted from archive!',
	--

	['evidence_colleted'] = 'Todiste #{number} kerätty!',
	['no_more_space'] = 'Not enough space for evidence 3/3!',
	['analyze_evidence'] = '[~b~E~w~] Analysoidaksesi Todisteet',
	['evidence_being_analyzed'] = 'Todisteita Analysoidaan! Odota',
	['evidence_being_analyzed_hologram'] = '~b~Todisteita Analysoidaan',
	['read_evidence_report'] = '[~b~E~w~] Lue tutkimus raportti',
	['analyzing_car'] = 'The car is being analyzed! Please wait',
	['pick_up_evidence_text'] = 'Kerää Todiste [~r~E~w~]',
	['no_fingerprints_found'] = 'Sormenjälkiä ei löytynyt!',
	['no_evidence_to_analyze'] = "Ei todisteita analysoitavaksi!",
	['shell_hologram'] = '~b~ {guncategory} ~w~ luodin hylsy',
	['blood_hologram'] = '~r~Veri Roiskeet',

	['blood_after_0_minutes'] = 'Status: ~r~TUORE',
	['blood_after_5_minutes'] = 'Status: ~y~VANHENTUNUT',
	['blood_after_10_minutes'] = 'Status: ~b~VANHA',

	['shell_after_0_minutes'] = 'Status: ~r~KUUMA',
	['shell_after_5_minutes'] = 'Status: ~y~LÄMMIN',
	['shell_after_10_minutes'] = 'Status: ~b~KYLMÄ',


	['submachine_category'] = 'Submachine',
	['pistol_category'] = 'Pistooli',
	['shotgun_category'] = 'Haulikko',
	['assault_category'] = 'Assault Rifle',
	['lightmachine_category'] = 'Light Machine Gun',
	['sniper_category'] = 'Tarkkuuskivääri',
	['heavy_category'] = 'Raskas Ase'


}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('inform', msg)

end
