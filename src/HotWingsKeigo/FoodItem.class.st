Class {
	#name : #FoodItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'price'
	],
	#category : #HotWingsKeigo
}

{ #category : #'as yet unclassified' }
FoodItem class >> name: nameVal price: priceVal [
	^ self new name: nameVal; price: priceVal
]

{ #category : #private }
FoodItem >> getName [
	^ name
]

{ #category : #private }
FoodItem >> getPrice [
	^ price
]

{ #category : #accessing }
FoodItem >> name: aString [
	name := aString
]

{ #category : #accessing }
FoodItem >> price: anInteger [
	price := anInteger
]
