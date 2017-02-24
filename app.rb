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
   @puntajeUser = "Player : "+logic.getScoreHuman.to_s
   @puntajeRobot = "Computadora : "+logic.getScoreRobot.to_s
   erb :main
end

post "/seleccionTijera" do
   @seleccion=params["seleccion"]
   logic = Logic.new
   @seleccion = logic.userSelect(@seleccion.to_s)
   @ronda = ""
   @puntajeUser = "Player : "+logic.getScoreHuman.to_s
   @puntajeRobot = "Computadora : "+logic.getScoreRobot.to_s
   erb :main
end

post "/seleccionPapel" do
   @seleccion=params["seleccion"]
   logic = Logic.new
   @seleccion = logic.userSelect(@seleccion.to_s)
   @ronda = ""
   @puntajeUser = "Player : "+logic.getScoreHuman.to_s
   @puntajeRobot = "Computadora : "+logic.getScoreRobot.to_s
   erb :main
end

