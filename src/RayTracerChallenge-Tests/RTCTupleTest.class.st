Class {
	#name : #RTCTupleTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCTupleTest >> testInitialize [ 
	| t |
	t := RTCTuple new.
	self assert: t x equals: 0.0.
	self assert: t y equals: 0.0.
	self assert: t z equals: 0.0
]

{ #category : #tests }
RTCTupleTest >> testWithXYZ [
   | t |
	t := RTCTuple withX: 5 withY: 4  withZ: 3.
	
	self assert: t x equals: 5.
	self assert: t y equals: 4.
	self assert: t z equals: 3. 
]
