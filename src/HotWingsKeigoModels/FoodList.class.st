Class {
	#name : #FoodList,
	#superclass : #Object,
	#classVars : [
		'list'
	],
	#category : #HotWingsKeigoModels
}

{ #category : #adding }
FoodList class >> add: food [
	list add: food
]

{ #category : #initialization }
FoodList class >> initialize [
	list := Dictionary new.
]
