"
Represents a point in 3D space
"
Class {
	#name : #RTCPoint,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #arithmetic }
RTCPoint >> + aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ AdditionOfPointsNotAllowed new signal: 'Two points can''t be added' ]
		ifFalse: [ ^ super + aTuple ]
]

{ #category : #arithmetic }
RTCPoint >> - aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ ^ (super - aTuple) asRTCVector  ]
		ifFalse: [ ^ super - aTuple ]
]

{ #category : #testing }
RTCPoint >> isRTCPoint [

	^ true 
]
