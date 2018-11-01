accessing - preferences
caseSensitive

	<preference: 'Case Sensitive'
		category: 'OCompletion'
		description: 'Decide if you want OCompletion to be case sensitive or not.'
		type: #Boolean>
	^caseSensitive ifNil: [ true ]
