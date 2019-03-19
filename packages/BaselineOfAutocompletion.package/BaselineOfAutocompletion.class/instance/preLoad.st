baseline
preLoad

	(Smalltalk at: #ECHistory)
		ifNotNil: [:history | history reset].
	(Smalltalk at: #OCompletionTable)
		ifNotNil: [:completionTable | completionTable reset].
	(Smalltalk at: #ECToolSet)
		ifNotNil: [:toolSet | toolSet reset].
	[(MCWorkingCopy forPackageNamed: #Autocompletion)
		unload]
		on: NotFound
		do: []