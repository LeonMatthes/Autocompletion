bytecode decoding
pushLiteralVariable: anAssociation 
	"Push Contents Of anAssociation On Top Of Stack bytecode."
	| info |
	contextCount > 0 ifTrue:[^self].

	info := ECTypeInfo definedByMessageSend: anAssociation value.
	types add: info