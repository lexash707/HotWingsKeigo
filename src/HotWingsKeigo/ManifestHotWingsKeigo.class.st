"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestHotWingsKeigo,
	#superclass : #PackageManifest,
	#category : #'HotWingsKeigo-Manifest'
}

{ #category : #'code-critics' }
ManifestHotWingsKeigo class >> ruleCollectSelectNotUsedRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#WAFoodOrdering #renderContentOn: #false)) #'2022-09-06T21:10:14.531638+02:00') )
]

{ #category : #'code-critics' }
ManifestHotWingsKeigo class >> ruleLongMethodsRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#WAFoodOrdering #renderContentOn: #false)) #'2022-09-06T21:10:12.384297+02:00') )
]
