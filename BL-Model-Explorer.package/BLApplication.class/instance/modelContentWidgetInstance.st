accessing
modelContentWidgetInstance
	^ modelContentWidgetInstanceCache
		ifNil: [ modelContentWidgetInstanceCache := self getContentWidgetConstructor
		flatCollect: [ :method | 
			| got |
			got := (method queryAll: #in) atScope: FAMIXClass.
			got
				collect: [ :el | 
					| instance |
					instance := BLWidgetInstance new
						link: (Association new key: (self searchFirstNotAnonymousClassForClass: el) value: nil).
					instance widgetClass: method parentType.
					instance constructor: method.
					instance link value: instance.
					instance ] ]	]