as yet unclassified
popIntoLiteralVariable: anAssociation 
	anAssociation key == variableName asSymbol 
		ifTrue: [ found := true ]
		ifFalse: [ self reset ]