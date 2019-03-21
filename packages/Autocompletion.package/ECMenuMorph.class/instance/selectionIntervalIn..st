private
selectionIntervalIn: aTextOrString

	| startIndex |
	startIndex := (aTextOrString findString: ECPreferences smartTabString startingAt: 1) - 1.
	startIndex >= 0
		ifTrue: [^ startIndex to: startIndex + ECPreferences smartTabString size - 1].

	startIndex := aTextOrString indexOf: Character space ifAbsent: [aTextOrString size].
	^ startIndex to: startIndex - 1