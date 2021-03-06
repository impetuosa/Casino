Extension { #name : #FASTJavaMethodEntity }

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTJavaMethodEntity >> ui [
	"Relation named: #ui type: #CSNAction opposite: #behavior"

	<generated>
	<FMProperty: #ui type: #CSNAction opposite: #behavior>
	<package: #'Casino-Behavior-Model'>
	^ self privateState attributeAt: #ui ifAbsent: [ nil ]
]

{ #category : #'*Casino-Behavior-Model-accessing' }
FASTJavaMethodEntity >> ui: anObject [

	<generated>
	self privateState attributeAt: #ui put: (FMMultivalueLink on: self update: #behavior from: self ui to: anObject).
]
