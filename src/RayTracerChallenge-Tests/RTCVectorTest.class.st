Class {
	#name : #RTCVectorTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCVectorTest >> testAdditionOfTwoVectors [

	|v1 v2 r e|
	v1 := RTCVector x: 3 y: -2 z: 5.
	v2 := RTCVector x: -2 y: 3 z: 1. 

	r := v1 + v2.
	e := RTCVector x: 1 y: 1 z: 6.
	
	self assert: e isRTCVector equals: true;
		  assert: r = e equals: true. 
]

{ #category : #tests }
RTCVectorTest >> testAdditionWithPoint [

	|p v r e|
	p := RTCPoint x: 3 y: -2 z: 5.
	v := RTCVector x: -2 y: 3  z: 1. 

	r := v + p.
	e := RTCPoint x: 1 y: 1  z: 6.
	
	self assert: r isRTCPoint equals: true;
		  assert: r = e equals: true.
]

{ #category : #tests }
RTCVectorTest >> testCross [

	|v0 v1 r e|
	v0 := RTCVector x: 1.0 y: 2.0  z: 3.0.
	v1 := RTCVector x: 2.0 y: 3.0  z: 4.0.
	
	r := v0 cross: v1.
	e := RTCVector x: -1.0 y: 2.0  z: -1.0.
	self assert: r = e equals: true.
	
	r := v1 cross: v0.
	e := RTCVector x: 1.0 y: -2.0  z: 1.0.
	self assert: r = e equals: true.
	
	self should: [ v0 cross: RTCPoint new ]
	     raise: RTCIsNotRTCVector.
	
	self should: [ v0 cross: 2.0 ]
	     raise: RTCIsNotRTCVector 
]

{ #category : #tests }
RTCVectorTest >> testDot [ 

	|v0 v1 r|
	v0 := RTCVector x: 1.0 y: 2.0  z: 3.0.
	v1 := RTCVector x: 2.0 y: 3.0  z: 4.0.
	
	r := v0 dot: v1.
	
	self assert: (r closeTo: 20.0) equals: true.
	
	self should: [ v0 dot: RTCPoint new ]
	     raise: RTCIsNotRTCVector.
	
	self should: [ v0 dot: 2.0 ]
	     raise: RTCIsNotRTCVector 
]

{ #category : #tests }
RTCVectorTest >> testInitialize [ 

	|v|
	v := RTCVector new.
	
	self assert: v x equals: 0.0;
		  assert: v y equals: 0.0;
		  assert: v z equals: 0.0;
		  assert: v w equals: 0.0.
]

{ #category : #tests }
RTCVectorTest >> testIsRTCPoint [ 

	|v|
	v := RTCVector new.
	
	self assert: v isRTCPoint equals: false
]

{ #category : #tests }
RTCVectorTest >> testIsRTCVector [ 

	|v|
	v := RTCVector new.
	
	self assert: v isRTCVector equals: true
]

{ #category : #tests }
RTCVectorTest >> testMagnitude [

	| v r |
	
	v := RTCVector x: 1.0 y: 0.0  z: 0.0.
	r := v magnitude.
	self assert: (r closeTo: 1.0) equals: true.
	
	v := RTCVector x: 0.0 y: 1.0  z: 0.0.
	r := v magnitude.
	self assert: (r closeTo: 1.0) equals: true.
	
	v := RTCVector x: 0.0 y: 0.0  z: 1.0.
	r := v magnitude.
	self assert: (r closeTo: 1.0) equals: true.
	
	v := RTCVector x: 1.0 y: 2.0  z: 3.0.
	r := v magnitude.
	self assert: (r closeTo: (14.0 sqrt)) equals: true.
	
	v := RTCVector x: -1.0 y: -2.0  z: -3.0.
	r := v magnitude.
	self assert: (r closeTo: (14.0 sqrt)) equals: true.
]

{ #category : #tests }
RTCVectorTest >> testMagnitudeOfNormalizedVector [ 

	|v r|
	
	v := RTCVector x: 1.0 y: 2.0  z: 3.0.
	r := v normalize.
	
	self assert: ((r magnitude) closeTo: 1.0) equals: true  

]

{ #category : #tests }
RTCVectorTest >> testNormalize [ 

	|v e r|
	v := RTCVector x: 4.0 y: 0.0  z: 0.0. 
	e := RTCVector x: 1.0 y: 0.0  z: 0.0.
	r := v normalize.
	 
	self assert: r = e equals: true.
	
	v := RTCVector x: 1.0 y: 2.0  z: 3.0.
	e := RTCVector x: 1.0 / (14.0 sqrt)  y: 2.0 / (14.0 sqrt)  z: 3.0/ (14.0 sqrt).
	r := v normalize.
	
	self assert: r = e equals: true  

]

{ #category : #tests }
RTCVectorTest >> testSubtractionWithPoint [

	|p v|
	v := RTCVector x: 3 y: -2 z: 5.
	p := RTCPoint x: -2 y: 3  z: 1. 

	self should: [ v - p ]
	     raise: RTCSubtractingWithPointNotAllowed
]

{ #category : #tests }
RTCVectorTest >> testSubtractionWithVector [

	|v1 v2 r e|
	v1 := RTCVector x: 3 y: 2 z: 1.
	v2 := RTCVector x: 5 y: 6  z: 7. 

	r := v1 - v2.
	e := RTCVector x: -2 y: -4  z: -6. 
	
	self assert: r = e equals: true
]

{ #category : #tests }
RTCVectorTest >> testZero [ 

	|v e|
	v := RTCVector zero.
	e := RTCVector x: 0.0 y: 0.0  z: 0.0.
	
	self assert: v = e equals: true

]
