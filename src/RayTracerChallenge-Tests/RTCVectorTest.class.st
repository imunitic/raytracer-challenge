Class {
	#name : #RTCVectorTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCVectorTest >> testAdditionOfTwoVectors [

	|v1 v2 r e|
	v1 := RTCVector withX: 3 withY: -2 withZ: 5.
	v2 := RTCVector withX: -2 withY: 3 withZ: 1. 

	r := v1 + v2.
	e := RTCVector withX: 1 withY: 1 withZ: 6.
	
	self assert: e isRTCVector equals: true;
		  assert: r = e equals: true. 
]

{ #category : #tests }
RTCVectorTest >> testAdditionWithPoint [

	|p v r e|
	p := RTCPoint withX: 3 withY: -2 withZ: 5.
	v := RTCVector withX: -2 withY: 3  withZ: 1. 

	r := v + p.
	e := RTCPoint withX: 1 withY: 1  withZ: 6.
	
	self assert: r isRTCPoint equals: true;
		  assert: r = e equals: true.
]

{ #category : #tests }
RTCVectorTest >> testDot [ 

	|v0 v1 r|
	v0 := RTCVector withX: 1.0 withY: 2.0  withZ: 3.0.
	v1 := RTCVector withX: 2.0 withY: 3.0  withZ: 4.0.
	
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
	
	v := RTCVector withX: 1.0 withY: 0.0  withZ: 0.0.
	r := v magnitude.
	self assert: (r closeTo: 1.0) equals: true.
	
	v := RTCVector withX: 0.0 withY: 1.0  withZ: 0.0.
	r := v magnitude.
	self assert: (r closeTo: 1.0) equals: true.
	
	v := RTCVector withX: 0.0 withY: 0.0  withZ: 1.0.
	r := v magnitude.
	self assert: (r closeTo: 1.0) equals: true.
	
	v := RTCVector withX: 1.0 withY: 2.0  withZ: 3.0.
	r := v magnitude.
	self assert: (r closeTo: (14.0 sqrt)) equals: true.
	
	v := RTCVector withX: -1.0 withY: -2.0  withZ: -3.0.
	r := v magnitude.
	self assert: (r closeTo: (14.0 sqrt)) equals: true.
]

{ #category : #tests }
RTCVectorTest >> testMagnitudeOfNormalizedVector [ 

	|v r|
	
	v := RTCVector withX: 1.0 withY: 2.0  withZ: 3.0.
	r := v normalize.
	
	self assert: ((r magnitude) closeTo: 1.0) equals: true  

]

{ #category : #tests }
RTCVectorTest >> testNormalize [ 

	|v e r|
	v := RTCVector withX: 4.0 withY: 0.0  withZ: 0.0. 
	e := RTCVector withX: 1.0 withY: 0.0  withZ: 0.0.
	r := v normalize.
	 
	self assert: r = e equals: true.
	
	v := RTCVector withX: 1.0 withY: 2.0  withZ: 3.0.
	e := RTCVector withX: 1.0 / (14.0 sqrt)  withY: 2.0 / (14.0 sqrt)  withZ: 3.0/ (14.0 sqrt).
	r := v normalize.
	
	self assert: r = e equals: true  

]

{ #category : #tests }
RTCVectorTest >> testSubtractionWithPoint [

	|p v|
	v := RTCVector withX: 3 withY: -2 withZ: 5.
	p := RTCPoint withX: -2 withY: 3  withZ: 1. 

	self should: [ v - p ]
	     raise: RTCSubtractingWithPointNotAllowed
]

{ #category : #tests }
RTCVectorTest >> testSubtractionWithVector [

	|v1 v2 r e|
	v1 := RTCVector withX: 3 withY: 2 withZ: 1.
	v2 := RTCVector withX: 5 withY: 6  withZ: 7. 

	r := v1 - v2.
	e := RTCVector withX: -2 withY: -4  withZ: -6. 
	
	self assert: r = e equals: true
]

{ #category : #tests }
RTCVectorTest >> testZero [ 

	|v e|
	v := RTCVector zero.
	e := RTCVector withX: 0.0 withY: 0.0  withZ: 0.0.
	
	self assert: v = e equals: true

]
