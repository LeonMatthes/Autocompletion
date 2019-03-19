accessing
leastUsedSymbol

	| sortedHistory |
	sortedHistory := self history associations sort: [:firstAssociation :secondAssociation |
		firstAssociation value <= secondAssociation value].
	^ sortedHistory first key.