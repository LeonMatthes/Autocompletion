public
perform
	| minPriorityInfo  methodRefs |
	variableName isEmpty
		ifTrue: [^ nil].
	methodRefs := self methodRefs.
	methodRefs
		ifNil: [^ nil]. 
	methodRefs isBehavior
		ifTrue: [^ methodRefs].
	contextCount := 0.
	minPriorityInfo := nil.
	methodRefs do: [:each | 
		| infosOfMethod |
		self prepare: each.
		infosOfMethod := self typeOfVarIn: each compiledMethod.
		(infosOfMethod detectMin: #priority) ifNotNil: [ :possibleMinPrioriotyInfo |
			minPriorityInfo 
				ifNil: [ minPriorityInfo := possibleMinPrioriotyInfo ]
				ifNotNil: [ 
					minPriorityInfo priority <= possibleMinPrioriotyInfo priority
						ifFalse: [ minPriorityInfo := possibleMinPrioriotyInfo ] ] ] ].
	^minPriorityInfo ifNotNil: [ minPriorityInfo type ]