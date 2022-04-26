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

{ #category : #arithmetic }
RTCTuple >> + aTuple [

	^ self class withX: (self x + aTuple x) 
					 withY: (self y + aTuple y)  
					 withZ: (self z + aTuple z)
]

{ #category : #comparing }
RTCTuple >> = aTuple [
	^ aTuple class == self class 
	  and: [ aTuple x = self x 
		    and: [ aTuple y = self y
			      and: aTuple z = self z ] ]
]

{ #category : #comparing }
RTCTuple >> hash [ 
	^ self x hash bitXor: (self y hash bitXor: self z hash)
]

{ #category : #initialization }
RTCTuple >> initialize [ 
	self x: 0.0;
	     y: 0.0;
	     z: 0.0.
]

{ #category : #testing }
RTCTuple >> isRTCPoint [
	
	^ false
]

{ #category : #testing }
RTCTuple >> isRTCVector [

	^ false
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
