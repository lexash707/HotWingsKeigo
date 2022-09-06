Class {
	#name : #WAFoodReceiptRoot,
	#superclass : #WAComponent,
	#instVars : [
		'foodList'
	],
	#category : #HotWingsKeigo
}

{ #category : #testing }
WAFoodReceiptRoot class >> canBeRoot [
	^ true
]

{ #category : #testing }
WAFoodReceiptRoot class >> initialize [
	(WAAdmin register: self asApplicationAt: 'FoodReceipt')
		addLibrary: JQDeploymentLibrary;
		addLibrary: TBSDeploymentLibrary 
]

{ #category : #rendering }
WAFoodReceiptRoot >> renderContentOn: html [
	html tbsForm
		method: 'GET';
		action: 'FoodApp';
		with: [
			html tbsSubmitButton with: 'Go to Order Page'.
	]
]
