Class {
	#name : #RTCVectorTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

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
