"
Represents a vector in 3D space
"
Class {
	#name : #RTCVector,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #arithmetic }
RTCVector >> + aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ ^ (super + aTuple) asRTCPoint ]
		ifFalse: [ ^ super + aTuple ]
]

{ #category : #arithmetic }
RTCVector >> - aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ SubtractingWithPointNotAllowed new signal: 'Substracting points from vector is not allowed' ]
		ifFalse: [ ^ super - aTuple ]
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
