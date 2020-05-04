*Autocompletion
completionController
	"This function implementation is provided by Autocompletion.
	If OCompletion is installed, it will create this function, which Autocompletion has moved to the Model class.
	In order to use Autocompletion instead of OCompletion code here, we just call super, as we cannot easily delete existing functions when installing a package with Metacello."
	^ super completionController