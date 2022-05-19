"
Represents a canvas on which we can draw
"
Class {
	#name : #RTCCanvas,
	#superclass : #Object,
	#instVars : [
		'width',
		'height',
		'contents'
	],
	#category : #RayTracerChallenge
}

{ #category : #'instance creation' }
RTCCanvas class >> width: aWidth height: aHeight [

	^ self new width: aWidth; 
				  height: aHeight;
				  contents: ((Array new: aWidth * aHeight) atAllPut: (RTCColor black); yourself) 
]

{ #category : #format }
RTCCanvas >> asPPMString [
	
	^ String streamContents: [ :stream | 
		stream nextPutAll: self ppmHeader.
			
		1 to: self height do: [ :row |
			| rowStream currentRowSize currentColorPPMString |
			rowStream := WriteStream on: String new.
					
  			1 to: self width do: [ :column | 
				currentColorPPMString := (self at: row at: column) asPPMString.
				currentRowSize := rowStream contents size.
				
				(currentRowSize + currentColorPPMString size) > self ppmMaxLineLength
					ifTrue: [ 
								 rowStream nextPutAll: String cr.
								 stream nextPutAll: rowStream contents.
								 rowStream := WriteStream on: String new.
						     ].
				rowStream nextPutAll: currentColorPPMString.
				column < self width 
					ifTrue: [ rowStream nextPutAll: String space ]
 			].
		
			stream nextPutAll: rowStream contents.
		 	stream nextPutAll: String cr
		].
	].
		
]

{ #category : #accessing }
RTCCanvas >> at: aRow at: aColumn [
	^ self contents at: (self indexForRow: aRow andColumn: aColumn)
]

{ #category : #accessing }
RTCCanvas >> at: aRow at: aColumn color: aColor [
	aColor isRTCColor 
		ifTrue: [ self contents at: (self indexForRow: aRow andColumn: aColumn) put: aColor ]
		ifFalse: [ self error: 'Color is not a RTCColor' ]
		
]

{ #category : #accessing }
RTCCanvas >> contents [

	^ contents
]

{ #category : #accessing }
RTCCanvas >> contents: anObject [

	contents := anObject
]

{ #category : #accessing }
RTCCanvas >> height [

	^ height
]

{ #category : #accessing }
RTCCanvas >> height: anObject [

	height := anObject
]

{ #category : #accessing }
RTCCanvas >> indexForRow: aRow andColumn: aColumn [

	(aRow between: 1 and: height)
		ifFalse: [self error: '1st subscript out of range'].
	(aColumn between: 1 and: width)
		ifFalse: [self error: '2nd subscript out of range'].
	^ (aRow-1) * width + aColumn
]

{ #category : #format }
RTCCanvas >> ppmHeader [
	^ 'P3<r>{1} {2}<r>255<r>' expandMacros format: { self width. self height }.
]

{ #category : #format }
RTCCanvas >> ppmMaxLineLength [
	^ 70
]

{ #category : #accessing }
RTCCanvas >> width [

	^ width
]

{ #category : #accessing }
RTCCanvas >> width: anObject [

	width := anObject
]
