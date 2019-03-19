baseline
baseline: spec
	<baseline>
	spec
		for: #'common' 
		do: [
			spec
				package: 'Autocompletion';
				yourself.
			spec
				group: 'default' with: #('core');
				group: 'core' with: #('Autocompletion')
				yourself.
			spec
				postLoadDoIt: #postLoad.]