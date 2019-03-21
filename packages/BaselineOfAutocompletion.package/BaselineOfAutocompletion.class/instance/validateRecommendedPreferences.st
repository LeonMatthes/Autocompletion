baseline
validateRecommendedPreferences

	(ECPreferences askAboutRecommendedPreferences and: [ECPreferences containsUnrecommended])
		ifTrue: [(UIManager default 
			chooseFrom: {'Yes' . 'No' . 'No, Don''t ask again'} 
			values: {#yes . #no. #disable}
			title: ECPreferences unrecommendedPreferencesString)
				caseOf: {
				[#yes] -> [ECPreferences restoreRecommendedPreferences].
				[#disable] -> [ECPreferences askAboutRecommendedPreferences: false]
			} otherwise: ["nil is returned, when the window is dismissed without choice"]].