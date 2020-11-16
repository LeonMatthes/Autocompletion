action
narrowWith: aString 
	completionToken := aString.
	[self model narrowWith: aString] on: Exception do: [:exception | model handleException: exception]