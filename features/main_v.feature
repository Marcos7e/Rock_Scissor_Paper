Feature: Piedra papel o tijera

Scenario: entrar
	Given voy a la pantalla principal
	Then debe decir "Piedra, Papel o Tijera"


Scenario: boton piedra
	Given voy a la pantalla principal
	When presionar "btn_piedra"
	Then debe dar post
