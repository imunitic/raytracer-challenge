"
Represent a color
"
Class {
	#name : #RTCColor,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #'instance creation' }
RTCColor class >> red: red green: green blue: blue [
	^ self new red: red;
	           green: green;
	           blue: blue;
	           yourself.
	
]

{ #category : #'instance creation' }
RTCColor class >> x: x y: y z: z [ 
	^ self red: x green: y  blue: z
]

{ #category : #arithmetic }
RTCColor >> <*> aColor [

 ^ self hadamardProduct: aColor
]

{ #category : #accessing }
RTCColor >> blue [

	^ z
]

{ #category : #accessing }
RTCColor >> blue: anObject [

	z := anObject
]

{ #category : #accessing }
RTCColor >> green [

	^ y
]

{ #category : #accessing }
RTCColor >> green: anObject [

	y := anObject
]

{ #category : #arithmetic }
RTCColor >> hadamardProduct: aColor [

 aColor isRTCColor 
	ifTrue: [ 
		^ self class red:   (self red * aColor red) 
		             green: (self green * aColor green) 
		             blue:  (self blue * aColor blue)]
	ifFalse: [ RTCIsNotRTCColor new signal: 'aColor is not a color' ]
]

{ #category : #initialization }
RTCColor >> initialize [ 
	super initialize.
	self red: 0.0;
	     green: 0.0;
	     blue: 0.0;
	     w: 0.0
]

{ #category : #accessing }
RTCColor >> isRTCColor [ 

	^ true
]

{ #category : #accessing }
RTCColor >> red [

	^ x
]

{ #category : #accessing }
RTCColor >> red: anObject [

	x := anObject
]
