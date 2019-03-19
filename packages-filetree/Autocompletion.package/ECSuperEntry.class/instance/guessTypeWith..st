as yet unclassified
guessTypeWith: anECContext 
	^ anECContext theClass ifNotNil: [anECContext theClass superclass]