Class {
	#name : #RTCCanvasTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTCCanvasTest >> testAtAtColor [

	| c red |
	c := RTCCanvas width: 10 height: 20.
	red := RTCColor red: 1.0 green: 0.0  blue: 0.0.
	
	c at: 2 at: 3 color: red. 
	
	self assert: (c at: 2 at: 3) equals: red
]

{ #category : #tests }
RTCCanvasTest >> testWidthHeight [

	| c |
	c := RTCCanvas width: 10 height: 20.
	
	self assert: c width equals: 10;
		  assert: c height equals: 20; 
		  assert: (c contents allSatisfy: [ :each | each = RTCColor black ]) equals: true
]
