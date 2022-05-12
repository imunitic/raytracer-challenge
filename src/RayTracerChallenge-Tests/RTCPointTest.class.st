Class {
	#name : #RTCPointTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCPointTest >> testAdditionOfTwoPoints [

	|p1 p2|
	p1 := RTCPoint x: 3 y: -2 z: 5.
	p2 := RTCPoint new. 

	self should: [ p1 + p2 ]
	     raise: Exception
]

{ #category : #tests }
RTCPointTest >> testAdditionWithVector [

	|p v r e|
	p := RTCPoint x: 3 y: -2 z: 5.
	v := RTCVector x: -2 y: 3  z: 1. 

	r := p + v.
	e := RTCPoint x: 1 y: 1  z: 6.
	
	self assert: r isRTCPoint equals: true;
		  assert: r = e equals: true.
	
]

{ #category : #tests }
RTCPointTest >> testInitialize [ 

	|p|
	p := RTCPoint new.
	
	self assert: p x equals: 0.0;
		  assert: p y equals: 0.0;
		  assert: p z equals: 0.0;
		  assert: p w equals: 1.0.
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
	p1 := RTCPoint x: 3 y: 2 z: 1.
	p2 := RTCPoint x: 5 y: 6  z: 7. 

	r := p1 - p2.
	e := RTCVector x: -2 y: -4  z: -6.
	
	self assert: r isRTCVector equals: true;
		  assert: r = e equals: true.
	
]

{ #category : #tests }
RTCPointTest >> testSubtractionWithVector [

	|p v r e|
	p := RTCPoint x: 3 y: 2 z: 1.
	v := RTCVector x: 5 y: 6  z: 7. 

	r := p - v.
	e := RTCPoint x: -2 y: -4  z: -6.
	
	self assert: r isRTCPoint equals: true;
		  assert: r = e equals: true.
	
]
