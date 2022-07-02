action
narrowWith: aString 
	completionToken := aString.
	[self model narrowWith: aString] on: self class allErrors do: [:exception | model handleException: exception]