Class {
	#name : #RTCEnvironment,
	#superclass : #Object,
	#instVars : [
		'gravity',
		'wind'
	],
	#category : #'RayTracerChallenge-Examples'
}

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
