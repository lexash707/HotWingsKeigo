Class {
	#name : #WAFoodList,
	#superclass : #WAComponent,
	#instVars : [
		'foodList'
	],
	#category : #HotWingsKeigo
}

{ #category : #accessing }
WAFoodList class >> list: foodList [
	^ self new setFoodList: foodList 
]

{ #category : #'as yet unclassified' }
WAFoodList class >> list: foodList renderContentOn: html [
	self new setFoodList: foodList; renderContentOn: html.
]

{ #category : #rendering }
WAFoodList >> initialize [
	foodList := Dictionary new.
]

{ #category : #rendering }
WAFoodList >> renderContentOn: html [
	html table: [ 
		html tableHead: [ 
			html
				tableHeading: 'Food name';
				tableHeading: 'Amount';
				tableHeading: 'Price'.
			 ].
		foodList collect: [ :value |
			html tableRow: [ 
					html
						tableData: value getName;
						tableData: 0;
						tableData: value getPrice.
				 ]
			 ]
		 ]
]

{ #category : #initialization }
WAFoodList >> setFoodList: list [
	foodList := list
]
