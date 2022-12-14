Class {
	#name : #WAFoodReceiptRoot,
	#superclass : #WAComponent,
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
	html tbsContainer
		with: [ 
		html heading level2; with: 'Thank you for order.'.
		html heading level3; id: 'totalText'; with: 'placeholder text'.
		WAFoodAppRoot getFoodList.
		html tbsForm
			method: 'GET';
			action: 'FoodApp';
			with: [
				html tbsSubmitButton with: 'Go to Order Page'.
			]
	]
]

{ #category : #accessing }
WAFoodReceiptRoot >> script [
	^ 'const params = new URLSearchParams(window.location.search);$(document).ready(function () {$("#totalText").text("Your total is: " + params.get("Total"));});'.
]
