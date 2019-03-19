*Autocompletion
indexOfSubStringWithEmpty: subString caseSensitive: caseSensitive
	"Answer the index of the given subString in the receiver. Return 0 if
	the subString is not found."

	subString isEmpty ifTrue: [ ^1 ].
	self size < subString size ifTrue: [ ^0 ].
	^self findString: subString startingAt: 1 caseSensitive: caseSensitive