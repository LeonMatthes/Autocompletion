testing
matchNarrowSymbol: aSymbol

	"Use caching to avoid duplicate matching effort"
	^ aSymbol = self lastMatch
		ifTrue: [self matchPriority]
		ifFalse: [
			self lastMatch: aSymbol.
			self matchPriority: (self contents matchNarrowString: aSymbol).
			self matchPriority]