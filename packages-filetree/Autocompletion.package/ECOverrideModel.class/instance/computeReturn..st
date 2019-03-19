private
computeReturn: aString
	| lastLine |
	lastLine := aString lineCorrespondingToIndex: aString size.
	^(lastLine
				detect: [:each | each = $^]
				ifNone: [])
				ifNil: ['']
				ifNotNil: ['^'].
