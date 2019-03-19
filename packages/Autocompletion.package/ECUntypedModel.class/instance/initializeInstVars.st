initialize-release
initializeInstVars
	(clazz isNil or: [ includeVariables not ]) ifTrue: [ ^ self ].
	instVars := clazz allInstVarNames asOrderedCollection replace: [ :each | 
		ECInstVarEntry 
			contents: each
			type: #instVar ].
	instVars add: (ECSelfEntry 
			contents: 'self'
			type: #self).
	instVars add: (ECSuperEntry 
			contents: 'super'
			type: #super)