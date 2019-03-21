initialization
unrecommendedPreferencesString

	| string |
	string := 'Warning: Unrecommended preferences!', String cr.
	string := string, ((ECPreferences smartTab 
						and: [ECPreferences smartCharacters] 
						and: [ECPreferences keepSelectionAfterAddingSmartCharacters not])
							ifTrue: ['"Smart Tabbing" is activated, but "keep selecion after adding smart characters" is not.'] 
							ifFalse: ['']).
	string := string, String cr, 'Should I restore the settings to a recommended state?'.
	^ string