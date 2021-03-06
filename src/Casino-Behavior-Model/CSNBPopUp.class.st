"
I represent a call which will create a pop up with the data as inside it (it corresponds most of the time to a String, but it can change)
"
Class {
	#name : #CSNBPopUp,
	#superclass : #FASTExpression,
	#category : #'Casino-Behavior-Model-Entities'
}

{ #category : #meta }
CSNBPopUp class >> annotation [

	<FMClass: #PopUp super: #FASTExpression>
	<package: #'Casino-Behavior-Model'>
	<generated>
	^self
]

{ #category : #accessing }
CSNBPopUp >> data [
	"Relation named: #data type: #FASTExpression opposite: #carrefourPopUpOwner"

	<generated>
	<FMComment: 'The data that will be displayed in the popUp'>
	<FMProperty: #data type: #FASTExpression opposite: #carrefourPopUpOwner>
	^ self privateState attributeAt: #data ifAbsent: [ nil ]
]

{ #category : #accessing }
CSNBPopUp >> data: anObject [

	<generated>
	(self privateState attributeAt: #data ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self data.
		self privateState attributeAt: #data put: anObject.
		otherSide carrefourPopUpOwner: nil ]
	ifNotNil: [ 
		self privateState attributeAt: #data put: anObject.
		anObject carrefourPopUpOwner: self ]
]

{ #category : #navigation }
CSNBPopUp >> dataGroup [
	<generated>
	<navigation: 'Data'>
	^ MooseGroup with: self data
]
