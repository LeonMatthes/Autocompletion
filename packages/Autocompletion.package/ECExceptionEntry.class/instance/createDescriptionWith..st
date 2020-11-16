as yet unclassified
createDescriptionWith: anECContext

	^ ECEntryDescription
		label: 'Autocompletion encountered an error!'
		title: self exception class name asString
		description: self exception messageText
		