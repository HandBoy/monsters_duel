load 'app/model/monstro.rb'
load 'app/view/tela.rb'
load 'app/view/menus.rb'
load 'app/model/jogador.rb'
load 'app/controller/monstros_controller.rb'
load 'app/game/duelo.rb'

def criar_classe_monstro(nome)
    eval "class #{nome} < Monstro; end"
    eval "#{nome}"
end

opcao = -1
until (opcao.zero?)
  @monstros_t = []
  opcao = Menus.print(:principal)
  case opcao
    when 1
      duelo = Duelo.new
      monstro1 = Bicho.new
      monstro2 = Bicho.new
      jogador1 = Jogador.new(:nome => "Mateus", :monstro => monstro1)
      jogador2 = Jogador.new(:nome => "Handerson", :monstro => monstro2)
      duelo.iniciar_partida(jogador1, jogador2)
    when 2
      opcao_monstros = Menus.print(:monstros)
      case opcao_monstros
        when 1
          Tela.limpar
          @monstros_t.each do |m|
            puts " -- #{m.name} -- #{m.elemento}"
          end
        when 2
          Tela.limpar
          print "Nome do monstro: "
          classe_monstro = criar_classe_monstro(gets.chomp.capitalize)
          pontos_restantes = 600
          atributos = {:vida=>0, :defesa=>0, :magia=>0, :forca=>0}
          atributos.each_pair do |key, value| 
            Tela.limpar
            puts "Pontos restantes: #{pontos_restantes}\n\n"
            print "Pontos de #{key.to_s}: "
            atributos[key] = gets.chomp.to_i
            pontos_restantes -= atributos[key]
          end
          Tela.limpar
          opcao_elemento = Menus.print(:elementos)
          if opcao_elemento == 1
            atributos[:elemento] = "Agua"
          else if opcao_elemento == 2
            atributos[:elemento] = "Fogo"
          else if opcao_elemento == 3
            atributos[:elemento] = "Vento"
          else if opcao_elemento == 4
            atributos[:elemento] = "Terra"
          else if opcao_elemento == 5
            atributos[:elemento] = "Raio"
          end; end; end; end; end;
          Tela.limpar
          puts "Magias: \n\n"
          print "Nome: "
          magia1 = gets.chomp.downcase.to_sym
          print "Dano: "
          dano1 = gets.chomp.to_i
          print "\n\nNome: "
          magia2 = gets.chomp.downcase.to_sym
          print "Dano: "
          dano2 = gets.chomp.to_i
          magias = {magia1 => dano1, magia2 => dano2}
          puts atributos
          gets.chomp
          MonstrosController.definir_atributos(classe_monstro, atributos, magias)
          MonstrosController.definir_magias(classe_monstro, magias)
          @monstros_t << classe_monstro
          puts classe_monstro
          gets.chomp
        when 3
          #apagar monstro
        end
    end
end