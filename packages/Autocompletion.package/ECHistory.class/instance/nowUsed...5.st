accessing
nowUsed: aSymbol

	self history at: aSymbol put: DateAndTime now.
	[self history size > self maxHistorySize]
		whileTrue: [self history removeKey: self leastUsedSymbol ifAbsent: []]