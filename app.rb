require 'sinatra'
require_relative './lib/logic_l'


get '/' do   
 @@logic = Logic.new
"Ronda:"+@@logic.ronda.to_s
 erb :main
end

post "/seleccionPiedra" do
   @seleccion=params["seleccion"]  
   @seleccion = @@logic.userSelect(@seleccion.to_s)
   @imagen='<img src="/img/piedra.jpg" height="250" width="300">'
   @ronda = "Ronda:"+@@logic.ronda.to_s + " de 10"
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+@@logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+@@logic.getScoreRobot.to_s
   erb :main

end

post "/seleccionTijera" do
   @seleccion=params["seleccion"]
   @seleccion = @@logic.userSelect(@seleccion.to_s)
   @imagen='<img src="/img/tijera.png" height="250" width="300">'
   @ronda = "Ronda:"+@@logic.ronda.to_s + " de 10"
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+@@logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+@@logic.getScoreRobot.to_s
   erb :main
end

post "/seleccionPapel" do
   @seleccion=params["seleccion"]
   @seleccion = @@logic.userSelect(@seleccion.to_s)
   @imagen='<img src="/img/papel.jpg" height="250" width="300">'
   @ronda = "Ronda:"+@@logic.ronda.to_s + " de 10"
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+@@logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+@@logic.getScoreRobot.to_s
   erb :main
end

