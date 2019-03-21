smart tabbing
isAtBeginningOfLine

	| lineBeginning textToCaret |
	lineBeginning := self editor beginningOfLine: self editor selectionInterval start.
	textToCaret := self editor text copyFrom: lineBeginning to: self editor selectionInterval start - 1.
	^ (textToCaret allSatisfy: [:each | each isSeparator])