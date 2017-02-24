require 'sinatra'
require_relative './lib/logic_l'

def imagenPC
	'<p>Computadora: </br><img src="/img/#{@@logic.select_robot}.jpg" height="250" width="300"></p>' 
end

get '/' do   
 @@logic = Logic.new
"Ronda:"+@@logic.ronda.to_s
 erb :main
end

post "/seleccionPiedra" do
   @seleccion=params["seleccion"]  
   @seleccion = @@logic.userSelect(@seleccion.to_s)
   @imagen='<p>Player: </br><img src="/img/piedra.jpg" height="250" width="300"></p>'
   @imagenComputadora=imagenPC
   @ronda = "Ronda:"+@@logic.ronda.to_s + " de 10"
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+@@logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+@@logic.getScoreRobot.to_s
   erb :main

end

post "/seleccionTijera" do
   @seleccion=params["seleccion"]
   @seleccion = @@logic.userSelect(@seleccion.to_s)
   @imagen='<p>Player: </br><img src="/img/tijera.png" height="250" width="300"></p>'
   @imagenComputadora=imagenPC
   @ronda = "Ronda:"+@@logic.ronda.to_s + " de 10"
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+@@logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+@@logic.getScoreRobot.to_s
   erb :main
end

post "/seleccionPapel" do
   @seleccion=params["seleccion"]
   @seleccion = @@logic.userSelect(@seleccion.to_s)
   @imagen='<p>Player: </br><img src="/img/papel.jpg" height="250" width="300"></p>'
   @imagenComputadora=imagenPC
   @ronda = "Ronda:"+@@logic.ronda.to_s + " de 10"
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+@@logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+@@logic.getScoreRobot.to_s

   erb :main
end

