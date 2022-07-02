*Autocompletion
wantsAutocompletion

	^ [self aboutToStyle: MessageCatcher new requestor: nil]
		ifError: [:ex | Transcript showln: ex. false]