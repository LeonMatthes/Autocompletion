accessing - preferences
smartCharacters

	<preference: 'Smart Characters'
		category: 'Autocompletion'
		description: 'Decide if you want Autocompletion to use smart characters, e.g, to automatically close brackets.'
		type: #Boolean>
	^smartCharacters ifNil: [ true ]