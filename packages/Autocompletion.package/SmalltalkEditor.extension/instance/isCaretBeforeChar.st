*Autocompletion-SqueakCompatibility
isCaretBeforeChar
	"Return true if the cursor position is before an alphanumeric character, otherwise false."

	| cursorPosition |
	^(cursorPosition := self stopIndex) <= self text size and: [
		(self text at: cursorPosition) isAlphaNumeric ]