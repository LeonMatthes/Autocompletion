accessing
exception: anException

	exception := anException.
	contents := '-- Error -- ', exception description.
	
	"For inspiration, see StandardToolSet class>>#debugException:"
	self helperProcess: ((Process
			forContext: anException signalerContext copyStack
			priority: Processor activeProcess priority)
				shouldResumeFromDebugger: false;
				yourself).