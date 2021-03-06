Class {
	#name : #GlorpTimeTest,
	#superclass : #GlorpDatabaseTypeIndividualDBTests,
	#category : 'Glorp-Tests-DatabaseTypes'
}

{ #category : #types }
GlorpTimeTest >> defaultDatabaseType [
	^self platform time
]

{ #category : #tests }
GlorpTimeTest >> testTime [
	self helpTestValue: nil.
	self
		helpTestValue: Time now
		compareWith:
			[:read :original | 
			(read hours = original hours and: [read minutes = original minutes])
				and: [read seconds truncated = original seconds truncated]].
]
