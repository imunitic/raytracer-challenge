"
Test RTCColor
"
Class {
	#name : #RTCColorTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCColorTest >> testAddition [
	
	| c1 c2 r e |
	c1 := RTCColor red: 0.9 green: 0.6  blue: 0.75.
	c2 := RTCColor red: 0.7 green: 0.1 blue: 0.25.
	
	r := c1 + c2.
	e := RTCColor red: 1.6 green: 0.7 blue: 1.0.
	self assert: r = e equals: true
]

{ #category : #tests }
RTCColorTest >> testHadamardProduct [ 
	
	| c1 c2 r e |
	c1 := RTCColor red: 1.0 green: 0.2  blue: 0.4.
	c2 := RTCColor red: 0.9 green: 1.0  blue: 0.1.
	
	r := c1 <*> c2.
	e := RTCColor red: 0.9 green: 0.2 blue: 0.04.
	self assert: r = e equals: true
]

{ #category : #tests }
RTCColorTest >> testInitialization [
	
	| c |
	c := RTCColor red: -0.5 green: 0.4  blue: 1.7.
	
	self assert: c red equals: -0.5.
	self assert: c green equals: 0.4.
	self assert: c blue equals: 1.7
]

{ #category : #tests }
RTCColorTest >> testMultiplication [ 
	
	| c r e |
	c := RTCColor red: 0.2 green: 0.3  blue: 0.4.
	
	r := c * 2.0.
	e := RTCColor red: 0.4 green: 0.6 blue: 0.8.
	self assert: r = e equals: true
]

{ #category : #tests }
RTCColorTest >> testSubtraction [
	
	| c1 c2 r e |
	c1 := RTCColor red: 0.9 green: 0.6  blue: 0.75.
	c2 := RTCColor red: 0.7 green: 0.1 blue: 0.25.
	
	r := c1 - c2.
	e := RTCColor red: 0.2 green: 0.5 blue: 0.5.
	self assert: r = e equals: true
]

{ #category : #format }
RTCColorTest >> testToPPM [ 
	| c |
	c := RTCColor red: 1.5 green: 0.7 blue: 0.6.
	
	self assert: c toPPM equals: '255 178 153'
]
