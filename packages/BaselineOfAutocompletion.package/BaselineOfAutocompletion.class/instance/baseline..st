baseline
baseline: spec
	<baseline>
	spec
		for: #'common' 
		do: [
			spec
				package: 'Autocompletion'.
			spec
				group: 'default' with: #('Autocompletion').
			spec
				postLoadDoIt: #postLoad.]