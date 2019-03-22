In this class, other tools can register hooks to add additional selectors to the Autocompletion.

Important methods:
ECEntryHook(class)>>#registerHook:named:
ECEntryHook(class)>>#removeHookNamed:

Hook methods:
Any hook can implement these methods to provide additional selectors to the currently active model.
#additionalSelectors
	- Collection of ECEntry instances
	- The entries that should always be provided by the Autocompletion
#additionalSelectorsTyped: receiverClass
	- Collection of ECEntry instances
	- The entries that should be provided when the receiverClass is known
#additionalSelectorsUntyped: contextClass
	- Collection of ECEntry instances
	- The entries that should be provided when the receiverClass is not known
	- contextClass is the class that is selected by the current TextEditor