"
The base object that represents 3D space
"
Class {
	#name : #RTCTuple,
	#superclass : #Object,
	#instVars : [
		'x',
		'y',
		'z',
		'w'
	],
	#category : #RayTracerChallenge
}

{ #category : #initialization }
RTCTuple class >> withX: x withY: y withZ: z withW: w [
	^ self new x: x; y: y; z: z; w: w.

]

{ #category : #arithmetic }
RTCTuple >> * aNumber [

	^ aNumber isNumber 
		ifTrue: [ self class withX: (self x * aNumber) 
										 withY: (self y * aNumber) 
										 withZ: (self z * aNumber) 
										 withW: (self w * aNumber)]
		ifFalse: [ RTCMultiplicationWithNonScalar signal: 'Multiplication with non scalar value' ]
]

{ #category : #arithmetic }
RTCTuple >> + aTuple [

	^ self class withX: (self x + aTuple x) 
					 withY: (self y + aTuple y)  
					 withZ: (self z + aTuple z)
					 withW: (self w + aTuple w)
]

{ #category : #arithmetic }
RTCTuple >> - aTuple [

	^ self class withX: (self x - aTuple x) 
					 withY: (self y - aTuple y)  
					 withZ: (self z - aTuple z)
					 withW: (self w - aTuple w)
]

{ #category : #arithmetic }
RTCTuple >> / aNumber [

	^ aNumber isNumber 
		ifTrue: [ self * (1.0/aNumber) ]
		ifFalse: [ RTCMultiplicationWithNonScalar signal: 'Multiplication with non scalar value' ]
]

{ #category : #comparing }
RTCTuple >> = aTuple [
	^ aTuple class == self class 
	  and: [ (aTuple x closeTo: self x) 
		    and: [ (aTuple y closeTo: self y)
			      and: [ (aTuple z closeTo: self z)
				        and: (aTuple w closeTo: self w) ]]]
]

{ #category : #converting }
RTCTuple >> asRTCPoint [
	
	^ RTCPoint withX: self x 
					 withY: self y  
					 withZ: self z
					 withW: self w
]

{ #category : #converting }
RTCTuple >> asRTCVector [
	
	^ RTCVector withX: self x 
					  withY: self y  
					  withZ: self z
					  withW: self w
]

{ #category : #comparing }
RTCTuple >> hash [ 
	^ self x hash bitXor: (self y hash bitXor: (self z hash bitXor: self w hash))
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

{ #category : #arithmetic }
RTCTuple >> negated [ 
	
	^ self x: self x negated; 
	       y: self y negated; 
	       z: self z negated;
			  w: self w negated; 
			  yourself
]

{ #category : #accessing }
RTCTuple >> w [

	^ w
]

{ #category : #accessing }
RTCTuple >> w: anObject [

	w := anObject
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
