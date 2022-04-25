Class {
	#name : #RTCPointTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

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
