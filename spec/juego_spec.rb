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
end
