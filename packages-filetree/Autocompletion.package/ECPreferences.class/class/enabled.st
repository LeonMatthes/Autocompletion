accessing - preferences
enabled
	
	<preference: 'Enable OCompletion'
		category: 'OCompletion'
		description: 'Enable or disable OCompletion in browsers, debuggers and workspaces.'
		type: #Boolean>
	^enabled ifNil: [ true ]
