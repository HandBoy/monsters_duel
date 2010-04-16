class MonstrosController
  
  def self.definir_atributos(classe_monstro, atributos, magias)
    classe_monstro.class_eval do
      define_method(:initialize) do
        super(atributos, magias)
      end 
    end
  end
  
  def self.definir_magias(classe_monstro, magias)
    magias.each_pair do |nome_magia, dano|
      classe_monstro.class_eval do
        define_method ( nome_magia ) do |inimigo, bonus_elemental|
          inimigo.vida -= rand(dano*magia) + bonus_elemento - rand(inimigo.defesa)
          #magia -= 12
          inimigo.vida
        end
      end
    end
  end
end