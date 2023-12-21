testing
isValidSelector: aSymbol
	
	"ct: ~24% faster than uncached (58ms vs 75ms for Symbol allSymbols)"
	^ (SymbolValidities ifNil: [SymbolValidities := WeakIdentityKeyDictionary new])
		at: aSymbol ifAbsentPut: [aSymbol isMessageSelector]