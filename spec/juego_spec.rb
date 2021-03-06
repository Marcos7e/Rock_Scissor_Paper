require_relative "../lib/logic_l.rb"

describe "Juego" do

  it "Envía 0 devuelve PIEDRA" do
      j = Logic.new
      j.userSelect 0
      j.select_human.should == "PIEDRA"
  end

  it "Envía 1 devuelve PAPEL" do
      j = Logic.new
      j.userSelect 1
      j.select_human.should == "PAPEL"
  end

  it "Envía 2 devuelve TIJERA" do
      j = Logic.new
      j.userSelect 2
      j.select_human.should == "TIJERA"
  end

  it "Si Humano elije tijera y robot elije papel" do
      j = Logic.new
      j.evalJuego 2,1
      j.getScoreRobot.should == 0
      j.getScoreHuman.should == 1
  end

  it "Si es ronda 10" do
      j = Logic.new
      10.times {j.evalJuego(0,1)}
      j.ronda.should == 0
  end

  it "Si jugador Gana" do
      j = Logic.new
      10.times {j.evalJuego(1,0)}
      j.winner.should == "Jugador!"
  end

  it "Si Computadora Gana" do
      j = Logic.new
      10.times {j.evalJuego(0,1)}
      j.winner.should == "Computadora ! (buuuuu!)"
  end

  it "Si Hay Empate" do
      j = Logic.new
      10.times {j.evalJuego(0,0)}
      j.winner.should == "Empate!"
  end

  

end
