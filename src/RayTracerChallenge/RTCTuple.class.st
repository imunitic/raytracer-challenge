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

{ #category : #'instance creation' }
RTCTuple class >> x: x y: y z: z w: w [
	^ self new x: x; y: y; z: z; w: w.

]

{ #category : #arithmetic }
RTCTuple >> * aNumber [

	^ aNumber isNumber 
		ifTrue: [ self class x: (self x * aNumber) 
										 y: (self y * aNumber) 
										 z: (self z * aNumber) 
										 w: (self w * aNumber)]
		ifFalse: [ RTCMultiplicationWithNonScalar signal: 'Multiplication with non scalar value' ]
]

{ #category : #arithmetic }
RTCTuple >> + aTuple [

	^ self class x: (self x + aTuple x) 
					 y: (self y + aTuple y)  
					 z: (self z + aTuple z)
					 w: (self w + aTuple w)
]

{ #category : #arithmetic }
RTCTuple >> - aTuple [

	^ self class x: (self x - aTuple x) 
					 y: (self y - aTuple y)  
					 z: (self z - aTuple z)
					 w: (self w - aTuple w)
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
	
	^ RTCPoint x: self x 
					 y: self y  
					 z: self z
					 w: self w
]

{ #category : #converting }
RTCTuple >> asRTCVector [
	
	^ RTCVector x: self x 
					  y: self y  
					  z: self z
					  w: self w
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
