require 'sinatra'

get '/' do
    erb :main
end

post "/seleccionPiedra" do
	@seleccion=params["seleccion"]
   @seleccion.to_s
end

post "/seleccionTijera" do
	@seleccion=params["seleccion"]
     @seleccion.to_s
end

post "/seleccionPapel" do
	@seleccion=params["seleccion"]
     @seleccion.to_s
end
