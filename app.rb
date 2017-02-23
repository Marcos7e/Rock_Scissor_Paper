require 'sinatra'
require_relative './lib/logic_l'

get '/' do
    erb :main
end


post "/seleccionPiedra" do
	@seleccion=params["seleccion"]
	logic = Logic.new
	logic.userSelect(@seleccion.to_s)   
end

post "/seleccionTijera" do
	@seleccion=params["seleccion"]
	logic = Logic.new
	logic.userSelect(@seleccion.to_s)
end

post "/seleccionPapel" do
	@seleccion=params["seleccion"]
	logic = Logic.new
	logic.userSelect(@seleccion.to_s)
end

