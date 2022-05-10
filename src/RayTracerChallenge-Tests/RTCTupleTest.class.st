Class {
	#name : #RTCTupleTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCTupleTest >> testDivision [ 

	| t r e |
	t := RTCTuple x: 1 y: -2  z: 3 w: -4.0.
	
	r := t / 2.
	e := RTCTuple x: 0.5 y: -1  z: 1.5 w: -2.0.
	
	self assert: r = e equals: true 
]

{ #category : #tests }
RTCTupleTest >> testInitialize [ 
	| t |
	t := RTCTuple new.
	self assert: t x equals: 0.0.
	self assert: t y equals: 0.0.
	self assert: t z equals: 0.0
]

{ #category : #tests }
RTCTupleTest >> testIsRTCPoint [

	|t|
	t := RTCTuple new.
	
	self assert: t isRTCPoint equals: false
]

{ #category : #tests }
RTCTupleTest >> testIsRTCVector [

	|t|
	t := RTCTuple new.
	
	self assert: t isRTCVector equals: false
]

{ #category : #tests }
RTCTupleTest >> testMultiplication [

	|t r e|
	t := RTCTuple x: 1 y: -2 z: 3 w: -4.0.
	
	r := t * 3.5.
	e := RTCTuple x: 3.5 y: -7  z: 10.5 w: -14.0.
	
	self assert: r = e equals: true.
	
	r := t * 0.5.
	e := RTCTuple x: 0.5 y: -1  z: 1.5 w: -2.
	
	self assert: r = e equals: true. 
]

{ #category : #tests }
RTCTupleTest >> testNegated [

	|t r e|
	
	t := RTCTuple x: 1 y: -2  z: 3 w: -4.0.
	r := t negated.
	
	e := RTCTuple x: -1 y: 2  z: -3 w: 4.0. 
	
	self assert: r = e equals: true
]

{ #category : #tests }
RTCTupleTest >> testWithXYZW [
   | t |
	t := RTCTuple x: 5 y: 4  z: 3 w: 1.
	
	self assert: t x equals: 5.
	self assert: t y equals: 4.
	self assert: t z equals: 3. 
	self assert: t w equals: 1.
]
