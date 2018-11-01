accessing - preferences
smartCharacters

	<preference: 'Smart Characters'
		category: 'OCompletion'
		description: 'Decide if you want OCompletion to use smart characters, e.g, to automatically close brackets.'
		type: #Boolean>
	^smartCharacters ifNil: [ true ]