"
Represents a point projectile with velocity and position
"
Class {
	#name : #RTCProjectile,
	#superclass : #Object,
	#instVars : [
		'position',
		'velocity'
	],
	#category : #'RayTracerChallenge-Examples'
}

{ #category : #accessing }
RTCProjectile >> position [

	^ position
]

{ #category : #accessing }
RTCProjectile >> position: anObject [

	position := anObject
]

{ #category : #accessing }
RTCProjectile >> velocity [

	^ velocity
]

{ #category : #accessing }
RTCProjectile >> velocity: anObject [

	velocity := anObject
]
