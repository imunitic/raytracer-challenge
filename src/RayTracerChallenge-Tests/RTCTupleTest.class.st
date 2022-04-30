Class {
	#name : #RTCTupleTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCTupleTest >> testDivision [ 

	| t r e |
	t := RTCTuple withX: 1 withY: -2  withZ: 3 withW: -4.0.
	
	r := t / 2.
	e := RTCTuple withX: 0.5 withY: -1  withZ: 1.5 withW: -2.0.
	
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
	t := RTCTuple withX: 1 withY: -2 withZ: 3 withW: -4.0.
	
	r := t * 3.5.
	e := RTCTuple withX: 3.5 withY: -7  withZ: 10.5 withW: -14.0.
	
	self assert: r = e equals: true.
	
	r := t * 0.5.
	e := RTCTuple withX: 0.5 withY: -1  withZ: 1.5 withW: -2.
	
	self assert: r = e equals: true. 
]

{ #category : #tests }
RTCTupleTest >> testNegated [

	|t r e|
	
	t := RTCTuple withX: 1 withY: -2  withZ: 3 withW: -4.0.
	r := t negated.
	
	e := RTCTuple withX: -1 withY: 2  withZ: -3 withW: 4.0. 
	
	self assert: r = e equals: true
]

{ #category : #tests }
RTCTupleTest >> testWithXYZW [
   | t |
	t := RTCTuple withX: 5 withY: 4  withZ: 3 withW: 1.
	
	self assert: t x equals: 5.
	self assert: t y equals: 4.
	self assert: t z equals: 3. 
	self assert: t w equals: 1.
]
