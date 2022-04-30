"
Represents a vector in 3D space
"
Class {
	#name : #RTCVector,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #'instance creation' }
RTCVector class >> zero [

	^ self withX: 0.0 withY: 0.0 withZ: 0.0 
	
]

{ #category : #arithmetic }
RTCVector >> * aNumber [

	^ aNumber isNumber 
		ifTrue: [ self class withX: (self x * aNumber) 
										 withY: (self y * aNumber) 
										 withZ: (self z * aNumber) ]
		ifFalse: [ RTCMultiplicationWithNonScalar signal: 'Multiplication with non scalar value' ]
]

{ #category : #arithmetic }
RTCVector >> + aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ ^ (super + aTuple) asRTCPoint ]
		ifFalse: [ ^ super + aTuple ]
]

{ #category : #arithmetic }
RTCVector >> - aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ RTCSubtractingWithPointNotAllowed new signal: 'Substracting points from vector is not allowed' ]
		ifFalse: [ ^ super - aTuple ]
]

{ #category : #arithmetic }
RTCVector >> / aNumber [

	^ aNumber isNumber 
		ifTrue: [ self * (1.0/aNumber) ]
		ifFalse: [ RTCMultiplicationWithNonScalar signal: 'Multiplication with non scalar value' ]
]

{ #category : #testing }
RTCVector >> isRTCVector [

	^ true
]

{ #category : #arithmetic }
RTCVector >> negated [ 
	
	^ self x: self x negated; 
	       y: self y negated; 
	       z: self z negated; 
			  yourself
]
