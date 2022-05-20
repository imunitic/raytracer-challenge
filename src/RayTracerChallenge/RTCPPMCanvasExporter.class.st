"
PPM Canvas Exporter
"
Class {
	#name : #RTCPPMCanvasExporter,
	#superclass : #RTCCanvasExporter,
	#category : #RayTracerChallenge
}

{ #category : #formatting }
RTCPPMCanvasExporter class >> exportColor: aColor [
| clip color |
	
	clip := [ :c |
		color := c * 255.0.
		
		color > 255.0 
			ifTrue: [ 255 ]
			ifFalse: [ color < 0.0
				ifTrue: [ 0 ]
				ifFalse: [ color ceiling  ] ]
	].

   ^ String streamContents: [  :stream |
		stream 
			nextPutAll: (clip value: aColor red) printString;
			nextPutAll: ' ';
			nextPutAll: (clip value: aColor green) printString;
			nextPutAll: ' ';
			nextPutAll: (clip value: aColor blue) printString
	 ]
]

{ #category : #formatting }
RTCPPMCanvasExporter class >> formatLine: aLine [
	| maxPPMLineLength|
	maxPPMLineLength := 70.
	
	^ aLine size > maxPPMLineLength 
		ifTrue: [ 
			| i c |
			i := maxPPMLineLength.
			c := aLine at: i.
					
			[ c isDigit ] whileTrue: [ 
					i := i - 1.
					c := aLine at: i.
			].
			aLine at: i put: Character cr; yourself
		]
		ifFalse: [ aLine ]
]

{ #category : #accessing }
RTCPPMCanvasExporter >> export [
	^ self ppmHeader, self ppmBody
]

{ #category : #format }
RTCPPMCanvasExporter >> ppmBody [
	|body lines|
   body := String streamContents: [ :stream |
		1 to: self canvas height do: [ :row |
 			1 to: self canvas width do: [ :column | 
				stream nextPutAll: (self class exportColor: (self canvas at: row at: column)).
				column < self canvas width ifTrue: [ stream nextPutAll: String space ]
			].
			stream nextPutAll: String cr
		]
	].
	lines := Character cr split: body.
	
	^ String cr join: (lines collect: [ :line | 
			self class formatLine: line ])
]

{ #category : #format }
RTCPPMCanvasExporter >> ppmHeader [
	^ 'P3<r>{1} {2}<r>255<r>' expandMacros format: { self canvas width. self canvas height }.
]
