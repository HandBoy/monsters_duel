class Jogador
  attr_accessor :nome, :monstro
  
  def initialize(params)
    @nome = params[:nome]
    @monstro = params[:monstro]
  end
end