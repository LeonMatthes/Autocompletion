baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Ocompletion';
				package: 'OcompletionSqueakCompatibility' with: [spec requires: #('Ocompletion')];
				yourself.
			spec
				group: 'default' with: #('Ocompletion' 'OcompletionSqueakCompatibility');
				yourself.
			spec
				postLoadDoIt: #postLoad.]