Class {
	#name : #WAFoodAppRoot,
	#superclass : #WAComponent,
	#instVars : [
		'foodList'
	],
	#category : #HotWingsKeigo
}

{ #category : #initialization }
WAFoodAppRoot class >> canBeRoot [
	^ true
]

{ #category : #initialization }
WAFoodAppRoot class >> initialize [
	(WAAdmin register: self asApplicationAt: 'HelloWorld')
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
]

{ #category : #rendering }
WAFoodAppRoot >> renderContentOn: html [
	html 
		div with: [ 
			foodList   
				ifNil: [ WANoFoodError new renderContentOn: html. ]; 
				ifNotNil: [ WAFoodList list: foodList renderContentOn: html. ].
		].
]