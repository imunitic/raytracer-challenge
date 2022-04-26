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
	     raise: AdditionOfPointsNotAllowed
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
