as yet unclassified
postLoad

	Smalltalk at: #ECToolSet ifPresent: [:ecToolSet | 
		ecToolSet register.
		ToolSet default: ecToolSet]