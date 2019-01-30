accessing
nextModel
	^ expand 
		ifTrue: [nextModel ifNil: [nextModel := ECUntypedModel class: clazz temporaries: localVars additionals: #() variables: includeVariables selectors: includeSelectors. nextModel narrowWith: narrowString] ifNotNil: [nextModel]]
		ifFalse: [OEmptyModel new]