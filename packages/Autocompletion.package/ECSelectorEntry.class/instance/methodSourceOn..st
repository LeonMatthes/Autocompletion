private
methodSourceOn: aCompiledMethod 
	^ aCompiledMethod getSourceFor: aCompiledMethod selector
		in: aCompiledMethod methodClass