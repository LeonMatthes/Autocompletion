preferences
helpText
	| text |
	text := TextStream new.
	text 
		withAttribute: TextEmphasis bold
		do: [ text nextPut: 'hello' ] text