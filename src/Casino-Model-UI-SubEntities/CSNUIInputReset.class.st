Class {
	#name : #CSNUIInputReset,
	#superclass : #CSNUIInput,
	#category : #'Casino-Model-UI-SubEntities-Widgets'
}

{ #category : #meta }
CSNUIInputReset class >> annotation [
	<MSEClass: #CSNUIInputReset super: #CSNUIInput>
	<package: #CSNWebModelJava>
	^ self
]

{ #category : #'as yet unclassified' }
CSNUIInputReset >> accept: anExporter [
	^ anExporter visitUIInputReset: self
]