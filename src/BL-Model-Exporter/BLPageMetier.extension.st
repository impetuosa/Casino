Extension { #name : #BLPageMetier }

{ #category : #'*BL-Model-Exporter' }
BLPageMetier >> container [
	^ self phaseContainers ifNotEmpty: [ self phaseContainers at: 1] ifEmpty:  [ self widgetContainer ]
]