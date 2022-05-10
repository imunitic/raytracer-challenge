"
Represents a vector in 3D space
"
Class {
	#name : #RTCVector,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #'instance creation' }
RTCVector class >> x: x y: y z: z [
	^ self x: x y: y z: z w: 0.0
]

{ #category : #'instance creation' }
RTCVector class >> zero [

	^ self x: 0.0 y: 0.0 z: 0.0 
	
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
RTCVector >> cross: aVector [
	| be |
	be := [ RTCIsNotRTCVector new signal: 'aVector is not a vector' ].
	
	[aVector isRTCVector
		ifTrue: [ 	
					^ self class x: (self y * aVector z) - (self z * aVector y)  
				                y: (self z * aVector x) - (self x * aVector z) 
					             z: (self x * aVector y) - (self y * aVector x) 
					]
		ifFalse: be]
	on: MessageNotUnderstood 
	do: be

]

{ #category : #arithmetic }
RTCVector >> dot: aVector [
	| be |
	be := [ RTCIsNotRTCVector new signal: 'aVector is not a vector' ].
	
	[aVector isRTCVector
		ifTrue: [ 	
					^ (self x * aVector x) +
	  				  (self y * aVector y) +
	  				  (self z * aVector z) +
					  (self w * aVector w)]
		ifFalse: be]
	on: MessageNotUnderstood 
	do: be

]

{ #category : #initialization }
RTCVector >> initialize [ 
	super initialize.
	self w: 0.0.
]

{ #category : #testing }
RTCVector >> isRTCVector [

	^ true
]

{ #category : #arithmetic }
RTCVector >> magnitude [

	^ ((self x raisedTo: 2) +
	  (self y raisedTo: 2) +
	  (self z raisedTo: 2) +
	  (self w raisedTo: 2)) sqrt 
]

{ #category : #arithmetic }
RTCVector >> normalize [

	| mag |
	mag := self magnitude.
	 
	^ self class x: self x / mag   
					 y: self y / mag  
					 z: self z / mag 
					 w: self w / mag
]
