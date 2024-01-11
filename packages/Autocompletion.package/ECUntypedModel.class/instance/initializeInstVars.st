initialize-release
initializeInstVars
	includeVariables ifFalse: [^ self ].
	instVars add: (ECThisContextEntry
			contents: 'thisContext'
			type: #thisContext).
	clazz ifNil: [ ^ self ].
	instVars addAll:
		(clazz allInstVarNames asOrderedCollection replace: [ :each | 
			ECInstVarEntry 
				contents: each
				type: #instVar ]).
	instVars add: (ECSelfEntry 
			contents: 'self'
			type: #self).
	instVars add: (ECSuperEntry 
			contents: 'super'
			type: #super).