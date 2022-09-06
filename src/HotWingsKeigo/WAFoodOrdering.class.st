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

{ #category : #'as yet unclassified' }
WAFoodOrdering >> calculateFullPrice [
	^ JSStream on: 'console.log("Calculating price."); window.location.replace("/FoodReceipt");'.
]

{ #category : #'as yet unclassified' }
WAFoodOrdering >> changeAmount: html forId: id [
	^ JSStream on: 'console.log("Hello Ew - ', id asString , ' - ' , id asString , '");'.
]

{ #category : #'as yet unclassified' }
WAFoodOrdering >> changeDelivery [
	^ JSStream on: 'console.log("Changing delivery!");'.
]

{ #category : #rendering }
WAFoodOrdering >> initialize [
	foodList := Dictionary new.
]

{ #category : #rendering }
WAFoodOrdering >> renderContentOn: html [
	html tbsForm
		method: '';
		action: '#';
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
			foodList associationsDo: [ :pair |
				html tbsRow: [  
					html tbsColumn
						extraSmallSize: 4;
						with: [ 
							html text: pair value getName.
					].
					html tbsColumn
						extraSmallSize: 4;
						with: [ 
							html text: pair value getPrice.
					].
					html tbsColumn
						extraSmallSize: 4;
						with: [ 
							html numberInput
								id: pair key;
								name: pair value getName;
								step: 1;
								min: 0;
								max: 10;
								value: 0;
								onChange: ( self changeAmount: html forId: pair key );
								tbsFormControl.
						]
					].
				].
				html tbsRow: [ 
					html heading level4; with: 'Delivery (costs extra 5): '.
					html checkbox
						name: 'Delivery';
						value: false;
						onChange: ( self changeDelivery );
						tbsFormControl.
				].
				html tbsRow: [ 
					html tbsButton
						onClick: ( self calculateFullPrice );
						with: 'Order'.
				].
			]
		]
]

{ #category : #initialization }
WAFoodOrdering >> setFoodList: list [
	foodList := list
]
