actions
browseWith: anECContext

	"For inspiration, see StandardToolSet class>>#debugException:"
	Project current addDeferredUIMessage: [
		self helperProcess
			debugWithTitle: self exception description
			full: false].
	^ true.