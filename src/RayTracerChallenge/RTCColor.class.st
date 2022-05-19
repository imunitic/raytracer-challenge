"
Represent a color
"
Class {
	#name : #RTCColor,
	#superclass : #RTCTuple,
	#category : #RayTracerChallenge
}

{ #category : #constants }
RTCColor class >> black [
	^ self red: 0.0 green: 0.0 blue: 0.0
]

{ #category : #'instance creation' }
RTCColor class >> red: red green: green blue: blue [
	^ self new red: red;
	           green: green;
	           blue: blue;
	           yourself.
	
]

{ #category : #constants }
RTCColor class >> white [
	^ self red: 1.0 green: 1.0 blue: 1.0
]

{ #category : #'instance creation' }
RTCColor class >> x: x y: y z: z [ 
	^ self red: x green: y  blue: z
]

{ #category : #arithmetic }
RTCColor >> <*> aColor [

 ^ self hadamardProduct: aColor
]

{ #category : #format }
RTCColor >> asPPMString [ 
	| clip color |
	
	clip := [ :c |
		color := c * 255.0.
		
		color > 255.0 
			ifTrue: [ 255 ]
			ifFalse: [ color < 0.0
				ifTrue: [ 0 ]
				ifFalse: [ color ceiling  ] ]
	].

   ^ String streamContents: [  :stream |
		stream 
			nextPutAll: (clip value: self red) printString;
			nextPutAll: ' ';
			nextPutAll: (clip value: self green) printString;
			nextPutAll: ' ';
			nextPutAll: (clip value: self blue) printString
	 ]
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
	ifFalse: [ self error: 'aColor is not a color' ]
]

{ #category : #initialization }
RTCColor >> initialize [ 
	super initialize.
	self red: 0.0;
	     green: 0.0;
	     blue: 0.0
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
