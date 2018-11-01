baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Ocompletion';
				yourself.
			spec
				group: 'default' with: #('Ocompletion');
				yourself.
			spec
				postLoadDoIt: #postLoad.]