testing
matchNarrowString: aString

	"Return a really high match priority here.
	If we ever encounter errors during matching, we want them to be on top."
	^ 10000.