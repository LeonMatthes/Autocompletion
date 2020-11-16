action
narrowWith: aString 
	completionToken := aString.
	model ifNotNil: [ [model narrowWith: aString] on: Exception do: [:exception | model handleException: exception] ]