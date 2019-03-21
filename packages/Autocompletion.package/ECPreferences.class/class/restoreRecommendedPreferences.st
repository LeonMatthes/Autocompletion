initialization
restoreRecommendedPreferences

	(ECPreferences smartTab and: [ECPreferences smartCharacters])
		ifTrue: [ECPreferences keepSelectionAfterAddingSmartCharacters: true].