baseline
preLoad

	Smalltalk at: #ECHistory ifPresent: [:history |
			SystemChangeNotifier uniqueInstance noMoreNotificationsFor: history Instance.
			history Instance: nil].
	Smalltalk at: #OCompletionTable ifPresent: [:completionTable | 
			SystemChangeNotifier uniqueInstance noMoreNotificationsFor: completionTable].
	Smalltalk at: #ECToolSet ifPresent: [:toolSet |
			ToolSet unregister: toolSet].
	[(MCWorkingCopy forPackageNamed: #Autocompletion)
		unload]
		on: NotFound
		do: []