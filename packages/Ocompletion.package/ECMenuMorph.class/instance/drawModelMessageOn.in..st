drawing
drawModelMessageOn: aCanvas in: rectangle 
	| message |
	message := context model hasMessage
				ifTrue: [context model message, ' | ', self helpText]
				ifFalse: [self detailMessage].
	aCanvas
		drawString: message
		in: (rectangle insetBy: 1)
		font: self class messageFont
		color: self class fontColor 