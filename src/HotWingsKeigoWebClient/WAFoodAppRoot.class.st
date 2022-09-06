Class {
	#name : #WAFoodAppRoot,
	#superclass : #WAComponent,
	#category : #HotWingsKeigoWebClient
}

{ #category : #initialization }
WAFoodAppRoot class >> canBeRoot [
	^ true
]

{ #category : #initialization }
WAFoodAppRoot class >> initialize [
	| app |
	app := WAAdmin register: self asApplicationAt: 'HelloWorld'
]

{ #category : #rendering }
WAFoodAppRoot >> renderContentOn: html [
	html text: 'Hello World!'
]
