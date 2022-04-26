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
		ifTrue: [ ^ aTuple + self ]
		ifFalse: [ ^ super + aTuple]
]

{ #category : #testing }
RTCVector >> isRTCVector [

	^ true
]
