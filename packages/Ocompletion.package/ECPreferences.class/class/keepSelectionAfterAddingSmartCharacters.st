accessing - preferences
keepSelectionAfterAddingSmartCharacters

	<preference: 'Keep Selection After Adding Smart Characters'
		category: 'OCompletion'
		description: 'Decide if you want OCompletion to keep the text selected after inserting smart characters.'
		type: #Boolean>
	^keepSelectionAfterAddingSmartCharacters ifNil: [ false ]