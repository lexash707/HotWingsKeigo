Class {
	#name : #WAFoodOrdering,
	#superclass : #WAComponent,
	#instVars : [
		'foodList'
	],
	#category : #HotWingsKeigo
}

{ #category : #accessing }
WAFoodOrdering class >> list: foodList [
	^ self new setFoodList: foodList 
]

{ #category : #'as yet unclassified' }
WAFoodOrdering class >> list: foodList renderContentOn: html [
	self new setFoodList: foodList; renderContentOn: html.
]

{ #category : #rendering }
WAFoodOrdering >> initialize [
	foodList := Dictionary new.
]

{ #category : #rendering }
WAFoodOrdering >> renderContentOn: html [
	html tbsForm
		method: 'GET';
		action: 'FoodReceipt';
		with: [ 
		html tbsContainer: [ 
			html tbsRow: [ 
				html tbsColumn
					extraSmallSize: 4;
					with: [
						html heading level3; with: 'Food name'.
					].
				html tbsColumn
					extraSmallSize: 4;
					with: [ 
						html heading level3; with: 'Price'.
					].
				html tbsColumn
					extraSmallSize: 4;
					with: [ 
						html heading level3; with: 'Amount'.
					].
			].
			foodList collect: [ :value |
				html tbsRow: [  
					html tbsColumn
						extraSmallSize: 4;
						with: [ 
							html text: value getName.
					].
					html tbsColumn
						extraSmallSize: 4;
						with: [ 
							html text: value getPrice.
					].
					html tbsColumn
						extraSmallSize: 4;
						with: [ 
							html numberInput
								name: value getName;
								step: 1;
								min: 0;
								max: 10;
								value: 0;
								tbsFormControl.
						]
					].
				].
				html tbsRow: [ 
					html heading level4; with: 'Delivery (costs extra 5): '.
					html checkbox
						name: 'Delivery';
						value: false;
						tbsFormControl.
				].
				html tbsRow: [ 
					html tbsSubmitButton with: 'Order'.
				].
			]
		]
]

{ #category : #initialization }
WAFoodOrdering >> setFoodList: list [
	foodList := list
]
