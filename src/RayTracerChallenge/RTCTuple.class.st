"
The base object that represents 3D space
"
Class {
	#name : #RTCTuple,
	#superclass : #Object,
	#instVars : [
		'x',
		'y',
		'z'
	],
	#category : #RayTracerChallenge
}

{ #category : #initialization }
RTCTuple class >> withX: x withY: y withZ: z [
	^ self new x: x; y: y; z: z.

]

{ #category : #accessing }
RTCTuple >> x [

	^ x
]

{ #category : #accessing }
RTCTuple >> x: anObject [

	x := anObject
]

{ #category : #accessing }
RTCTuple >> y [

	^ y
]

{ #category : #accessing }
RTCTuple >> y: anObject [

	y := anObject
]

{ #category : #accessing }
RTCTuple >> z [

	^ z
]

{ #category : #accessing }
RTCTuple >> z: anObject [

	z := anObject
]
