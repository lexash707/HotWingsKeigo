Class {
	#name : #WebServer,
	#superclass : #Object,
	#instVars : [
		'teapot'
	],
	#category : #HotWingsKeigoWebServer
}

{ #category : #'as yet unclassified' }
WebServer >> configure [
	teapot := Teapot configure: { 
		#defaultOutput -> #json.
		#port -> 8000
	 }
]

{ #category : #'as yet unclassified' }
WebServer >> helloworld [
	teapot GET: '/' -> '<h1>Hello World!</h1>'; output: #html
]

{ #category : #'as yet unclassified' }
WebServer >> start [
	teapot start
]
