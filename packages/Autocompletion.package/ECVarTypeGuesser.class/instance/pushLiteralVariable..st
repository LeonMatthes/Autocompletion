bytecode decoding
pushLiteralVariable: aBinding 
	"Push Contents Of anAssociation On Top Of Stack bytecode."
	| info |
	contextCount > 0 ifTrue:[^self].

	"typically, literals are classes, that are sent a message ('new' in general) to create an instance of this type.
	In some cases (e.g. Transcript) the literals is an object, so we need to take its class"
	info := aBinding value isBehavior
		ifTrue: [ECTypeInfo definedByMessageSend: aBinding value]
		ifFalse: [ECTypeInfo definedByLiteral: aBinding value class].

	types add: info