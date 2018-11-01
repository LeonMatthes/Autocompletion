as yet unclassified
descriptionWith: anECContext 
	description ifNotNil: [ ^ description ].
	^ description := self createDescriptionWith: anECContext