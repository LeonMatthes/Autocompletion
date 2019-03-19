accessing
lastUseOf: aSymbol

	^ self history at: aSymbol ifAbsent: [DateAndTime epoch]