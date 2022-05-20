Class {
	#name : #RTPPMCCanvasExporterTest,
	#superclass : #TestCase,
	#category : #'RayTracerChallenge-Tests'
}

{ #category : #tests }
RTPPMCCanvasExporterTest >> testFormatLine [
	| l e r|
	l := '255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255'.
	e := '255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255<r>255' expandMacros.
	r := RTCPPMCanvasExporter formatLine: l copy.
	
	self assert: r equals: e
]

{ #category : #tests }
RTPPMCCanvasExporterTest >> testPpmBody [
	| c e r ex|
	c := RTCCanvas width: 10 height: 2  color: RTCColor white. 
	ex := RTCPPMCanvasExporter withCanvas: c.
	e := '255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255<r>255 255 255 255 255 255 255 255 255 255 255 255 255<r>255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255 255<r>255 255 255 255 255 255 255 255 255 255 255 255 255<r>' expandMacros.
	r := ex ppmBody.
	
	self assert: r equals: e
]

{ #category : #tests }
RTPPMCCanvasExporterTest >> testPpmHeader [
	| c e r ex|
	c := RTCCanvas width: 5 height: 3.
	ex := RTCPPMCanvasExporter withCanvas: c.
	e := 'P3<r>{1} {2}<r>255<r>' expandMacros format: { 5. 3 }.
	r := ex ppmHeader.
	
	self assert: r equals: e
]
