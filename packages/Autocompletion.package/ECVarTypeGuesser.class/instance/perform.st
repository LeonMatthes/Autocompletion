public
perform
	|  methodRefs typeInfos |
	variableName isEmpty
		ifTrue: [^ nil].
	methodRefs := self methodRefs.
	methodRefs
		ifNil: [^ nil]. 
	methodRefs isBehavior
		ifTrue: [^ methodRefs].
	contextCount := 0.
	typeInfos := OrderedCollection new.
	methodRefs do: [:each |
		self prepare: each.
		typeInfos addAll: (self typeOfVarIn: each compiledMethod)].
	^ (typeInfos detectMin: #priority) ifNotNil: #type