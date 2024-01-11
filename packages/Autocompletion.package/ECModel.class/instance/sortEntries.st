accessing
sortEntries

	| seen |
	entries sort:
		[:entry | entry matchNarrowString: narrowString] descending
			, [:aEntry :bEntry | aEntry <= bEntry ifTrue: [-1] ifFalse: [0]]
			, [:aEntry :bEntry | (aEntry contents compare: bEntry contents caseSensitive: ECPreferences caseSensitive) - 2].
	
	"remove any duplicates"
	seen := Set new.
	entries removeAllSuchThat: [:entry |
		(seen ifAbsentAdd: entry contents) not].