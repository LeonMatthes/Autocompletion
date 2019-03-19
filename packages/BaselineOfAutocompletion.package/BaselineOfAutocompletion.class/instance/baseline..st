baseline
baseline: spec
	<baseline>
	spec
		for: #'common' 
		do: [
			spec
				package: 'Autocompletion'.
			spec
				group: 'default' with: #('core');
				group: 'core' with: #('Autocompletion').
			spec
				postLoadDoIt: #postLoad.]