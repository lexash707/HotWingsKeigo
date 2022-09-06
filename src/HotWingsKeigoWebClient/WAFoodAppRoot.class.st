Class {
	#name : #WAFoodAppRoot,
	#superclass : #Object,
	#category : #HotWingsKeigoWebClient
}

{ #category : #initialization }
WAFoodAppRoot class >> canBeRoot [
	^ true.
]

{ #category : #initialization }
WAFoodAppRoot class >> initialize [
	| app |
	app := WAAdmin register: self asApplicationAt: 'HotWingsKeigo'
]

{ #category : #rendering }
WAFoodAppRoot >> renderContentOn: html [
	html text: 'Hello World'
]
