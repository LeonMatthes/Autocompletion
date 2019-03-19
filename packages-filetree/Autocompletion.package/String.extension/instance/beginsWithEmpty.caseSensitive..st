*Autocompletion
beginsWithEmpty: prefix caseSensitive: aBoolean 
	"Answer whether the receiver begins with the given prefix string. 
	The comparison is case-sensitive."
	
	^(self indexOfSubStringWithEmpty: prefix caseSensitive: aBoolean) = 1