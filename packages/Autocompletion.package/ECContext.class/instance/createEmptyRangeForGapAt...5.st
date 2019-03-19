private-compute-index
createEmptyRangeForGapAt: index 
	| current previous |
	index = 1 ifTrue: [self insertEmptyRangeAt: 1 start: 0 end: 1. ^ index].
	current := ranges at: index.
	previous := ranges at: index - 1.
	self 
		insertEmptyRangeAt: index
		start: previous end + 1
		end: current start - 1.
	^ index