Class {
	#name : #CSNDataMetamodelGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'dataElement',
		'dataAction',
		'dataEvent',
		'dataResource',
		'dataContainer',
		'catalog',
		'columnSet',
		'relationalTable',
		'relationalView'
	],
	#category : #'Casino-DataModel-Generator'
}

{ #category : #accessing }
CSNDataMetamodelGenerator class >> packageName [
	^ 'Casino-DataModel'
]

{ #category : #accessing }
CSNDataMetamodelGenerator class >> prefix [
	^ #CSNDM
]

{ #category : #definition }
CSNDataMetamodelGenerator >> defineClasses [

	dataElement := builder newClassNamed: #DataElement.

	dataAction := builder newClassNamed: #DataAction.
	dataEvent := builder newClassNamed: #DataEvent.

	dataResource := builder newClassNamed: #DataResoruce.
	dataContainer := builder newClassNamed: #DataContainer.
	catalog := builder newClassNamed: #DataCatalog.

	columnSet := builder newClassNamed: #ColumnSet.
	relationalTable := builder newClassNamed: #RelationalTable.
	relationalView := builder newClassNamed: #RelationalView.
	
]

{ #category : #definition }
CSNDataMetamodelGenerator >> defineHierarchy [

	dataElement <|-- dataAction.
	dataElement <|-- dataResource.
	dataResource <|-- dataEvent.
	
	dataResource <|-- dataContainer.

	dataContainer <|-- catalog.


	dataContainer <|-- columnSet.
	columnSet <|-- relationalTable.
	columnSet <|-- relationalView
	

]

{ #category : #definition }
CSNDataMetamodelGenerator >> defineRelations [ 
	(dataAction property:#produces) <>-* (dataEvent property:#producedBy).
	(dataContainer property:#elements) <>-* (dataResource property:#owner)
	
]
