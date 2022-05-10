"
Represents a 3D environment with gravity and wind
"
Class {
	#name : #RTCEnvironment,
	#superclass : #Object,
	#instVars : [
		'gravity',
		'wind'
	],
	#category : #'RayTracerChallenge-Examples'
}

{ #category : #'example methods' }
RTCEnvironment class >> runExample [
	|p e n|

	n := 0.
	p := RTCProjectile new position: (RTCPoint x: 0.0 y: 1.0  z: 0.0); 
	                       velocity: ((RTCVector x: 1.0 y: 1.0  z: 0.0) normalize).
						
	e := self new gravity: (RTCVector x: 0.0 y: -0.1  z: 0.0);
 		                     wind: (RTCVector x: -0.01 y: 0.0  z: 0.0).


	[  p position y > 0.0 ] whileTrue: [ 
 	   p := e tick: p.
		n := n + 1.
		Transcript show: 'Position of projectile x: '; 
							  nextPutAll: (p position x printString); 
							  nextPutAll: ' y: '; 
							  nextPutAll: (p position y printString); 
							  nextPutAll: ' z: '; 
							  nextPutAll: (p position z printString);cr.
		Transcript show: 'Run number: ';
							  nextPutAll: n printString; cr.		
	]
]

{ #category : #accessing }
RTCEnvironment >> gravity [

	^ gravity
]

{ #category : #accessing }
RTCEnvironment >> gravity: anObject [

	gravity := anObject
]

{ #category : #action }
RTCEnvironment >> tick: aProjectile [
	|position velocity|
	
	position := aProjectile position + aProjectile velocity.
	velocity := aProjectile velocity  + self gravity + self wind. 
	^ RTCProjectile new 
		position: position;
		velocity: velocity;
		yourself 
]

{ #category : #accessing }
RTCEnvironment >> wind [

	^ wind
]

{ #category : #accessing }
RTCEnvironment >> wind: anObject [

	wind := anObject
]
