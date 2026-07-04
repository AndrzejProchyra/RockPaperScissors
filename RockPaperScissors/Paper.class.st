Class {
	#name : 'Paper',
	#superclass : 'Object',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'as yet unclassified' }
Paper >> playAgainst: aRole [

	^ aRole playAgainstPaper: self
]

{ #category : 'as yet unclassified' }
Paper >> playAgainstRock: aRock [

	^ self
]
