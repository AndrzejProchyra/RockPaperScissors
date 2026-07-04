Class {
	#name : 'BaselineOfRockPaperScissors',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfRockPaperScissors',
	#package : 'BaselineOfRockPaperScissors'
}

{ #category : 'baselines' }
BaselineOfRockPaperScissors >> baseline: spec [
	"#common means for all implementations of Pharo"

	<baseline>
	spec for: #common do: [
			spec preLoadDoIt: [ Transcript open ].
			spec postLoadDoIt: [ 'I am loaded' traceCr ].

			"the baselines of external dependencies"
			spec
				baseline: 'MathRandomNumbers'
				with: [
				spec repository: 'github://PolyMathOrg/random-numbers:v1.x.x/src' ].

			"package definitions afrom current repositories and their dependencies"
			spec package: 'RockPaperScissors'.

			spec
				package: 'RockPaperScissors-Tests'
				with: [ "this package has two dependencies"
					spec requires: #( 'RockPaperScissors' 'MathRandomNumbers' ) ].

			"groups"
			spec group: 'Core' with: #( 'RockPaperScissors' ).

			spec group: 'Tests' with: #( 'RockPaperScissors-Tests' ).

			spec group: 'default' with: #( 'Tests' ) ]
]
