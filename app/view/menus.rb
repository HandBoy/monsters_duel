#require '/classes/tela'

module Menus
  
  def self.print(menu)
    case menu
    ############ MENU PRINCIPAL #############
    when :principal
      Tela.limpar
      puts cabecalho
      puts "       01 -- Novo duelo"
      puts "       02 -- Monstros"
      puts "       00 -- Sair"
      puts rodape
      puts opcao
    ############ MENU SECUNDÁRIO #############
    when :monstros
      Tela.limpar
      puts cabecalho
      puts "       01 -- Listar monstros"
      puts "       02 -- Criar monstro"
      puts "       03 -- Apagar monstro"
      puts "       00 -- Voltar"
      puts rodape
      puts opcao
    
    ############# MENU TERCIÁRIO #############
    when :elementos
      puts "Elemento:"
      puts "       01 -- Agua"
      puts "       02 -- Fogo"
      puts "       03 -- Vento"
      puts "       04 -- Terra"
      puts "       05 -- Raio"
      puts rodape
      puts opcao
    end
    Tela.get_opcao
  end
  
  def self.cabecalho; "==== [0<>0}]  MONSTERS DUEL [0<>0}] ===="; end
  
  def self.rodape; "==== ---------------------------- ===="; end
  
  def self.opcao; "       Opcao: "; end
  
end