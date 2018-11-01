baseline
postLoad

	Smalltalk at: #ECToolSet ifPresent: [:ecToolSet | 
		ecToolSet register.
		ToolSet default: ecToolSet]