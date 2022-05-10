"
Represent a color
"
Class {
	#name : #RTCColor,
	#superclass : #Object,
	#instVars : [
		'red',
		'green',
		'blue'
	],
	#category : #RayTracerChallenge
}

{ #category : #'instance creation' }
RTCColor class >> red: red green: green blue: blue [
	^ self new red: red;
	           green: green;
	           blue: blue;
	           yourself.
	
]

{ #category : #accessing }
RTCColor >> blue [

	^ blue
]

{ #category : #accessing }
RTCColor >> blue: anObject [

	blue := anObject
]

{ #category : #accessing }
RTCColor >> green [

	^ green
]

{ #category : #accessing }
RTCColor >> green: anObject [

	green := anObject
]

{ #category : #initialization }
RTCColor >> initialize [ 
	self red: 0.0;
	     green: 0.0;
	     blue: 0.0.
]

{ #category : #accessing }
RTCColor >> red [

	^ red
]

{ #category : #accessing }
RTCColor >> red: anObject [

	red := anObject
]
