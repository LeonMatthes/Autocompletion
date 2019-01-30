as yet unclassified
guessTypeWith: anECContext 
	^ (anECContext guessTempVarClass: contents type: type) 
		ifNil: [anECContext guessArgument: contents]