accessing - preferences
enabled
	
	<preference: 'Enable Autocompletion'
		category: 'Autocompletion'
		description: 'Enable or disable Autocompletion in browsers, debuggers, inspectors and workspaces.'
		type: #Boolean>
	^enabled ifNil: [ true ]
