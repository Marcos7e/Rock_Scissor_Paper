Feature: Piedra papel o tijera

Scenario: entrar
	Given voy a la pantalla principal
	Then debe decir "Piedra, Papel o Tijera"


Scenario: boton piedra
	Given voy a la pantalla principal
	When presionar "btn_piedra"
	Then debe decir "PIEDRA"

Scenario: boton tijera
	Given voy a la pantalla principal
	When presionar "btn_tijera"
	Then debe decir "TIJERA"

Scenario: boton papel
	Given voy a la pantalla principal
	When presionar "btn_papel"
	Then debe decir "PAPEL"

Scenario: boton papel vs computadora
	Given voy a la pantalla principal
	When presionar "btn_papel"
	Then debe decir "PAPEL"

Scenario: rondas
	Given voy a la pantalla principal
	When presionar "btn_papel"
	Then debe decir "Round: 2"	
