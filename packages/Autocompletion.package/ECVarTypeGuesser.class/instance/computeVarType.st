bytecode decoding
computeVarType
	| info tempNames name |
	types ifEmpty: [ ^ nil ].
	info := types first.
	
	"If we find a message send, but we don't want to type-guess message sends 
	for this type, abort. (i.e. info is not a class literal)."
	(hasSend and: [ info isDefinedByMessageSend not ]) ifTrue: [ ^ nil ].
	
	info isDefinedByTemporary ifFalse: [ ^ info ].
	
	"Guess temporaries by their name (includes function arguments)"
	tempNames := (receiverClass compilerClass new 
		parse: currentMethod getSourceFromFile asString
		in: receiverClass
		notifying: nil) tempNames.
	name := tempNames at: info temporaryOffset + 1.
	info type: (self class getClassFromTypeSuggestingName: name).
	^ info