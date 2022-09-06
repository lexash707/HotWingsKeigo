Class {
	#name : #WAFoodItem,
	#superclass : #WAComponent,
	#instVars : [
		'name',
		'price',
		'count'
	],
	#category : #HotWingsKeigoWebClient
}

{ #category : #initialization }
WAFoodItem >> initialize [ 
	name := ''.
	price := 0.
	count := 0
]

{ #category : #initialization }
WAFoodItem >> renderContentOn: html [
	html heading: name.
	html number: count.
	html heading: price
]

{ #category : #initialization }
WAFoodItem >> set: item [
	name := item getName.
	price := item getPrice
]

{ #category : #initialization }
WAFoodItem >> states [
	^ Array with: self
]
