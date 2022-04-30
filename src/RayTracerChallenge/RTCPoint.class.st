"
Represents a point in 3D space
"
Class {
	#name : #RTCPoint,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #initialization }
RTCPoint class >> withX: x withY: y withZ: z [
	^ self withX: x withY: y withZ: z withW: 1.0
]

{ #category : #arithmetic }
RTCPoint >> + aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ RTCAdditionOfPointsNotAllowed new signal: 'Two points can''t be added' ]
		ifFalse: [ ^ super + aTuple ]
]

{ #category : #arithmetic }
RTCPoint >> - aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ ^ (super - aTuple) asRTCVector  ]
		ifFalse: [ ^ super - aTuple ]
]

{ #category : #initialization }
RTCPoint >> initialize [ 
	super initialize. 
	self w: 1.0
]

{ #category : #testing }
RTCPoint >> isRTCPoint [

	^ true 
]
