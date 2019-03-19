private
findSourceRangeFor: aNumber 
	"Will find the source of assignments, even for assignments like a := b := c := 2."
	aNumber
		to: ranges size
		by: 2
		do: [:index | 
			index + 3 > ranges size
				ifTrue: [^ nil].
			(ranges at: index + 1) isAssignment
				ifTrue: [(ranges at: index + 3) type = #statementSeparator
						ifTrue: [^ index + 2]
						ifFalse: [(ranges at: index + 2) type = #globalVar
								ifTrue: [^ index + 2]
								ifFalse: ["Skip to the next assignment in the chain"]]]
				ifFalse: [^nil] "Prevent this algorithm from randomly running into unrelated assignments"].
	
	^ nil