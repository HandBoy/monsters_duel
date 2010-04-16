class Monstro
  attr_accessor :vida, :magias_hash
  attr_reader :defesa, :magia, :forca, :elemento
  
  def initialize(atributos, magias)
    @vida = atributos[:vida]
    @defesa = atributos[:defesa]
    @magia = atributos[:magia]
    @forca = atributos[:forca]
    @elemento = atributos[:elemento] # é simbolo >> :raio, :agua, :fogo, :vento ou :terra.
    @magias_hash = magias
  end
  
  def soco_na_cara(inimigo)
    inimigo.vida -= (rand(dano*forca) - rand(inimigo.defesa))
    inimigo.vida
  end
end