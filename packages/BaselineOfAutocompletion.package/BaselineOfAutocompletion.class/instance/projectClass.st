baseline
projectClass
	"Changing the projectClass allows for updates to Autocompletion without adding metadata to the FileTree repository."
   ^ Smalltalk 
	at: #MetacelloCypressBaselineProject
	ifAbsent: [super projectClass]