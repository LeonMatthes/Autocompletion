initialization
containsUnrecommended

	^ ECPreferences smartTab 
		and: [ECPreferences smartCharacters]
		and: [ECPreferences keepSelectionAfterAddingSmartCharacters not]