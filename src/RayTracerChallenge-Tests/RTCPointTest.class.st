Class {
	#name : #RTCPointTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCPointTest >> testAdditionOfTwoPoints [

	|p1 p2|
	p1 := RTCPoint withX: 3 withY: -2 withZ: 5.
	p2 := RTCPoint new. 

	self should: [ p1 + p2 ]
	     raise: RTCAdditionOfPointsNotAllowed
]

{ #category : #tests }
RTCPointTest >> testAdditionWithVector [

	|p v r e|
	p := RTCPoint withX: 3 withY: -2 withZ: 5.
	v := RTCVector withX: -2 withY: 3  withZ: 1. 

	r := p + v.
	e := RTCPoint withX: 1 withY: 1  withZ: 6.
	
	self assert: r isRTCPoint equals: true;
		  assert: r = e equals: true.
	
]

{ #category : #tests }
RTCPointTest >> testInitialize [ 

	|p|
	p := RTCPoint new.
	
	self assert: p x equals: 0.0;
		  assert: p y equals: 0.0;
		  assert: p z equals: 0.0.
]

{ #category : #tests }
RTCPointTest >> testIsRTCPoint [ 

	|p|
	p := RTCPoint new.
	
	self assert: p isRTCPoint equals: true
]

{ #category : #tests }
RTCPointTest >> testIsRTCVector [ 

	|p|
	p := RTCPoint new.
	
	self assert: p isRTCVector equals: false
]

{ #category : #tests }
RTCPointTest >> testSubtractionWithPoint [

	|p1 p2 r e|
	p1 := RTCPoint withX: 3 withY: 2 withZ: 1.
	p2 := RTCPoint withX: 5 withY: 6  withZ: 7. 

	r := p1 - p2.
	e := RTCVector withX: -2 withY: -4  withZ: -6.
	
	self assert: r isRTCVector equals: true;
		  assert: r = e equals: true.
	
]

{ #category : #tests }
RTCPointTest >> testSubtractionWithVector [

	|p v r e|
	p := RTCPoint withX: 3 withY: 2 withZ: 1.
	v := RTCVector withX: 5 withY: 6  withZ: 7. 

	r := p - v.
	e := RTCPoint withX: -2 withY: -4  withZ: -6.
	
	self assert: r isRTCPoint equals: true;
		  assert: r = e equals: true.
	
]
