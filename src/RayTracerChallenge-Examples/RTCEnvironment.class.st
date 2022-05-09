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
	p := RTCProjectile new position: (RTCPoint withX: 0.0 withY: 1.0  withZ: 0.0); 
	                       velocity: ((RTCVector withX: 1.0 withY: 1.0  withZ: 0.0) normalize).
						
	e := self new gravity: (RTCVector withX: 0.0 withY: -0.1  withZ: 0.0);
 		                     wind: (RTCVector withX: -0.01 withY: 0.0  withZ: 0.0).


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
