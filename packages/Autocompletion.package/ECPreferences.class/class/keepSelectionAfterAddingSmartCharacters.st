accessing - preferences
keepSelectionAfterAddingSmartCharacters

	<preference: 'Keep Selection After Adding Smart Characters'
		category: 'Autocompletion'
		description: 'Decide if you want Autocompletion to keep the text selected after inserting smart characters.
It is highly recommended to keep this setting enabled if smart tabbing is enabled'
		type: #Boolean>
	^keepSelectionAfterAddingSmartCharacters ifNil: [ true ]