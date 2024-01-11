*Autocompletion
isVariable
	^ self isTemporaryVariable
		or: [self isInstanceVariable
				or: [self isSelf or: [self isSuper] or: [self isThisContext]]]