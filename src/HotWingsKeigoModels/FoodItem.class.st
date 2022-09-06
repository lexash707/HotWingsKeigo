Class {
	#name : #FoodItem,
	#superclass : #Object,
	#instVars : [
		'name',
		'price'
	],
	#category : #HotWingsKeigoModels
}

{ #category : #'as yet unclassified' }
FoodItem class >> name: nameVal price: priceVal [
	^ self new name: nameVal price: priceVal
]

{ #category : #private }
FoodItem >> getName [
	^ name
]

{ #category : #private }
FoodItem >> getPrice [
	^ price
]
