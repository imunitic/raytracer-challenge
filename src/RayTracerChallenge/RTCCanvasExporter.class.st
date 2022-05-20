"
Interface to export a RTCCanvas to different image formats
"
Class {
	#name : #RTCCanvasExporter,
	#superclass : #Object,
	#instVars : [
		'canvas'
	],
	#category : #RayTracerChallenge
}

{ #category : #creating }
RTCCanvasExporter class >> withCanvas: aCanvas [
	| ex |
	ex := self new.
	ex canvas: aCanvas.
	
	^ ex
]

{ #category : #accessing }
RTCCanvasExporter >> canvas [

	^ canvas
]

{ #category : #accessing }
RTCCanvasExporter >> canvas: anObject [

	canvas := anObject
]

{ #category : #accessing }
RTCCanvasExporter >> export [
	^ self subclassResponsibility 
]
