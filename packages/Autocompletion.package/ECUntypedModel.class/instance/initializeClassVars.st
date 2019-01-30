initialize-release
initializeClassVars

	(clazz isNil or: [ includeVariables not ]) ifTrue: [ ^ self ].
	classVars := clazz theNonMetaClass allClassVarNames asOrderedCollection replace: [ :each | 
		ECClassVarEntry
			contents: each
			type: #classVar ]