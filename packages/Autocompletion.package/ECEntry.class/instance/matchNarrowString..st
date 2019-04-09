testing
matchNarrowString: aString

	"Use caching to avoid duplicate matching effort"
	^ aString = self lastMatch
		ifTrue: [self matchPriority]
		ifFalse: [
			self lastMatch: aString.
			self matchPriority: (self contents matchNarrowString: aString).
			self matchPriority]