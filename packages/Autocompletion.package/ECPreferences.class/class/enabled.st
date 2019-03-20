accessing - preferences
enabled
	
	<preference: 'Enable Autocompletion'
		category: 'Autocompletion'
		description: 'Enable or disable Autocompletion in browsers, debuggers and workspaces.'
		type: #Boolean>
	^enabled ifNil: [ true ]
