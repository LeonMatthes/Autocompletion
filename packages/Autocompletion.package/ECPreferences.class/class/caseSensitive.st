accessing - preferences
caseSensitive

	<preference: 'Case Sensitive'
		category: 'Autocompletion'
		description: 'Decide if you want Autocompletion to be case sensitive or not.'
		type: #Boolean>
	^caseSensitive ifNil: [ true ]
