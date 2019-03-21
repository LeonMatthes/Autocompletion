accessing - preferences
smartTab
	<preference: 'Enable Smart Tabbing'
		category: 'Autocompletion'
		description: 'Decide if you want Autocompletion to enable tabbing between where the user needs to insert additional information.'
		type: #Boolean>
	^ smartTab ifNil: [ true ]
