require 'sinatra'
require_relative './lib/logic_l'

get '/' do
    erb :main
end

post "/seleccionPiedra" do
   @seleccion=params["seleccion"]
   logic = Logic.new
   @seleccion = logic.userSelect(@seleccion.to_s)
   @ronda = ""
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+logic.getScoreRobot.to_s
   erb :main
end

post "/seleccionTijera" do
   @seleccion=params["seleccion"]
   logic = Logic.new
   @seleccion = logic.userSelect(@seleccion.to_s)
   @ronda = ""
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+logic.getScoreRobot.to_s
   erb :main
end

post "/seleccionPapel" do
   @seleccion=params["seleccion"]
   logic = Logic.new
   @seleccion = logic.userSelect(@seleccion.to_s)
   @ronda = ""
   @puntajeUser = "<h3>Puntaje acumulado:</h3>Jugador: "+logic.getScoreHuman.to_s
   @puntajeRobot = "<br>Robot: "+logic.getScoreRobot.to_s
   erb :main
end

