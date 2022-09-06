Class {
	#name : #WAFoodAppRoot,
	#superclass : #WAComponent,
	#instVars : [
		'foodList'
	],
	#classVars : [
		'sourceList'
	],
	#category : #HotWingsKeigo
}

{ #category : #initialization }
WAFoodAppRoot class >> canBeRoot [
	^ true
]

{ #category : #'as yet unclassified' }
WAFoodAppRoot class >> getFoodList [
	^ sourceList 
]

{ #category : #initialization }
WAFoodAppRoot class >> initialize [
	(WAAdmin register: self asApplicationAt: 'FoodApp')
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary 
]

{ #category : #rendering }
WAFoodAppRoot >> initialize [ 
	super initialize.
	foodList := Dictionary new.
	foodList at: 1 put: (FoodItem name: 'Food Item 1' price: 10).
	foodList at: 2 put: (FoodItem name: 'Food Item 2' price: 20).
	foodList at: 3 put: (FoodItem name: 'Food Item 3' price: 30).
	foodList at: 4 put: (FoodItem name: 'Food Item 4' price: 40).
	sourceList := foodList.
]

{ #category : #rendering }
WAFoodAppRoot >> renderContentOn: html [
	html tbsContainer: [ 
		foodList   
			ifNil: [ WANoFoodError new renderContentOn: html ]; 
			ifNotNil: [ WAFoodOrdering list: foodList renderContentOn: html ].
	 ].
]
