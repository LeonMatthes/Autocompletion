private
initializeGlobalsSelectors

	Smalltalk environment keysDo: 
			[ :each | 
			selectors add: (ECGlobalEntry 
					contents: each
					type: #globalVar)].