api
evaluateUsing: aContext
	(self isRunnableUsing: aContext)
		ifTrue: [ self run ]