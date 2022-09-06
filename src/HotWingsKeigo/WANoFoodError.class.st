Class {
	#name : #WANoFoodError,
	#superclass : #WAComponent,
	#instVars : [
		'foodList'
	],
	#category : #HotWingsKeigo
}

{ #category : #rendering }
WANoFoodError >> renderContentOn: html [
	html div with: [ 
		html heading: 'The food list is not available.'
	].
]
