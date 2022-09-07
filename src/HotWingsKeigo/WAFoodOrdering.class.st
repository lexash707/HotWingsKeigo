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
	^ JSStream on: 'let sum = 0; $('':input[type="number"]'').each((x, y) => {sum += (Number(y.value) * Number(y.title))});sum += $(''#Delivery'').prop(''checked'') ? 5 : 0;window.location.replace("/FoodReceipt?Total=" + sum);'.
]

{ #category : #rendering }
WAFoodOrdering >> initialize [
	foodList := Dictionary new.
]

{ #category : #rendering }
WAFoodOrdering >> renderContentOn: html [
	html tbsForm
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
								title: pair value getPrice;
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
						id: 'Delivery';
						value: false;
						tbsFormControl.
				].
				html tbsRow: [ 
					html tbsButton
						type: 'button';
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
