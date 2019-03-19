bytecode decoding
pushConstant: value 
	"Push Constant, value, on Top Of Stack bytecode."
	| info |
	contextCount > 0 ifTrue: [ ^ self ].
	value ifNotNil: 
		[ info := ECTypeInfo definedByLiteral: value class.
		types add: info ]