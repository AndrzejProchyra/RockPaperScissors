Class {
	#name : 'RockPaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'RockPaperScissors-Tests',
	#package : 'RockPaperScissors-Tests'
}

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperAgainstPaper [

	| paper |
	paper := Paper new.

	"self assert: (paper playAgainst: paper) equals: "
	
""
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperAgainstRock [

	| paper rock |
	paper := Paper new.
	rock := Rock new.

	self assert: (paper playAgainst: rock) equals: paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperPlayAgainstScissors [

	| paper scissors |
	paper := Paper new.
	scissors := Scissors new.

	self assert: (paper playAgainst: scissors) equals: scissors
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockAgainstPaper [

	| rock paper |
	rock := Rock new.
	paper := Paper new.

	self assert: (rock playAgainst: paper) equals: paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockPlayAgainstScissors [

	| rock scissors |
	rock := Rock new.
	scissors := Scissors new.

	self assert: (rock playAgainst: scissors) equals: rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsAgainstPaper [

	| scissors paper |
	scissors := Scissors new.
	paper := Paper new.

	self assert: (scissors playAgainst: paper) equals: scissors
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsPlayAgainstRock [

	| scissors rock |
	scissors := Scissors new.
	rock := Rock new.

	self assert: (scissors playAgainst: rock) equals: scissors
]
