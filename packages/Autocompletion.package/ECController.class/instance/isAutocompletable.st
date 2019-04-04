keyboard-testing
isAutocompletable

	^ self editor isCaretBehindChar and: [self editor isCaretBeforeChar not]