accessing
completion

	| seperated firstSmartTab |
	seperated := self contentsAsSymbol copyReplaceAll: ':' with: ': ', ECPreferences smartTabString, ' '.
	"firstSmartTab := seperated findString: ECPreferences smartTabString.
	firstSmartTab > 0
		ifTrue: [seperated := seperated copyReplaceFrom: firstSmartTab to: firstSmartTab + 4 with: '']."
	^ seperated withBlanksTrimmed
	