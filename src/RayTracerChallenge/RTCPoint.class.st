"
Represents a point in 3D space
"
Class {
	#name : #RTCPoint,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #'instance creation' }
RTCPoint class >> x: x y: y z: z [
	^ self x: x y: y z: z w: 1.0
]

{ #category : #arithmetic }
RTCPoint >> + aTuple [

	^ aTuple isRTCPoint 
		ifTrue: [ self error: 'Two points can''t be added' ]
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
