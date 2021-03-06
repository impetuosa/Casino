Extension { #name : #CSNUIInputDate }

{ #category : #'*Casino-Model-Exporter-Angular' }
CSNUIInputDate >> angularComponent [
	^ CSNELCWBLInputComponent
	"^ MCDatePicker"
]

{ #category : #'*Casino-Model-Exporter-Angular' }
CSNUIInputDate >> computeSelfAttributes [
	^ super computeSelfAttributes
		,
			{(CSNAttribute new
				name: 'type';
				attributeValue: 'date';
				yourself)}
]
