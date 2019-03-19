baseline
preLoad

	(Smalltalk at: #ECHistory)
		ifNotNil: [:history |
			SystemChangeNotifier uniqueInstance noMoreNotificationsFor: history Instance.
			history Instance: nil].
	(Smalltalk at: #OCompletionTable)
		ifNotNil: [:completionTable | 
			SystemChangeNotifier uniqueInstance noMoreNotificationsFor: completionTable].
	(Smalltalk at: #ECToolSet)
		ifNotNil: [:toolSet |
			ToolSet unregister: toolSet].
	[(MCWorkingCopy forPackageNamed: #Autocompletion)
		unload]
		on: NotFound
		do: []