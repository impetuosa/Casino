Class {
	#name : #PNGSplitButton,
	#superclass : #PrimeNGComponent,
	#category : 'BL-Model-CoreWeb-Dependency'
}

{ #category : #accessing }
PNGSplitButton class >> internalDependencies [
	^ {PNGMenuItem}
]

{ #category : #accessing }
PNGSplitButton class >> moduleName [
	^ 'SplitButtonModule'
]

{ #category : #accessing }
PNGSplitButton class >> modulePath [
	^ 'primeng/splitbutton'
]