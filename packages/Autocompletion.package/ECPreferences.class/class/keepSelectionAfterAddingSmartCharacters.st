accessing - preferences
keepSelectionAfterAddingSmartCharacters

	<preference: 'Keep Selection After Adding Smart Characters'
		category: 'Autocompletion'
		description: 'Decide if you want Autocompletion to keep the text selected after inserting smart characters.'
		type: #Boolean>
	^keepSelectionAfterAddingSmartCharacters ifNil: [ false ]