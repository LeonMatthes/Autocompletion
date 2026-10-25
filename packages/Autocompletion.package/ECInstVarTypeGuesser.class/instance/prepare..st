bytecode decoding
prepare: aCompiledMethod 
	| theClass |
	super prepare: aCompiledMethod.
	theClass := aCompiledMethod actualClass.
	varIndex := (theClass allInstVarNames indexOf: variableName) - 1