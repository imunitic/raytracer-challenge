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
RTCVectorTest >> testDivision [ 

	| v r e |
	v := RTCVector withX: 1 withY: -2  withZ: 3.
	
	r := v / 2.
	e := RTCVector withX: 0.5 withY: -1  withZ: 1.5.
	
	self assert: r = e equals: true 
]

{ #category : #tests }
RTCVectorTest >> testInitialize [ 

	|v|
	v := RTCVector new.
	
	self assert: v x equals: 0.0;
		  assert: v y equals: 0.0;
		  assert: v z equals: 0.0.
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
RTCVectorTest >> testMultiplication [

	|v r e|
	v := RTCVector withX: 1 withY: -2 withZ: 3.
	
	r := v * 3.5.
	e := RTCVector withX: 3.5 withY: -7  withZ: 10.5.
	
	self assert: r = e equals: true.
	
	r := v * 0.5.
	e := RTCVector withX: 0.5 withY: -1  withZ: 1.5.
	
	self assert: r = e equals: true. 
]

{ #category : #tests }
RTCVectorTest >> testNegated [

	|t r e|
	
	t := RTCVector withX: 1 withY: -2  withZ: 3.
	r := t negated.
	
	e := RTCVector withX: -1 withY: 2  withZ: -3. 
	
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
