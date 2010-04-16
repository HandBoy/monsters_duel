class Duelo
  @@vantagem1 = 0
  @@vantagem2 = 0
  def iniciar_partida(jogador1, jogador2)
    while jogador1.monstro.vida > 0
		  Tela.limpar
		  puts "#{jogador1.nome}, eh a sua vez!\n"
		  Tela.desenhar_monstro(jogador1.monstro.elemento.downcase.to_sym, :normal)
		  puts "\n"
		  Tela.continue
		  Tela.limpar
		  atacar(jogador1,jogador2)
		  if vitoria(jogador1, jogador2); break;
	    end
		  puts "#{jogador2.nome} iniciando ataque"
		  #desenhar_monstro
		  Tela.continue
		  Tela.limpar
		  atacar(jogador2,jogador1)
		  if vitoria(jogador2, jogador1); break;
	  end		
  end
  
  def atacar(j, i)
	  puts "Pontos de vida #{j.monstro.vida}"
	  puts "Pontos de magia #{j.monstro.magia}"
	  puts " 1 - Ataque fisico"
	  puts " 2 - Magia"
	  opcao = Tela.get_opcao
	  Tela.limpar
	  case opcao
		  when 1
		    puts " O inimigo recebeu #{i.monstro.vida - j.monstro.soco_na_cara(i.monstro)} de dano."
		  when 2
		end
	end 
  
  def vitoria(j,i)
  	if i.monstro.vida <= 0
		  puts " O #{i.monstro.class} morreu, o jogador #{j.nome} venceu essa partida!!!"
		  #mostrar carinha de feliz
		  return true
	  end
	  return false
  end
  
  def calcula_vantagem(a,b)
	  if(a=="raio" && b=="agua")
		  @@vantagem1 =30
	  else 	if(a=="agua"&& b=="fogo")
		  @@vantagem1 =30
	  else if(a=="fogo"&& b=="vento")
		  @@vantagem1 =30
	  else 	if(a=="vento"&& b=="terra")
		  @@vantagem1 =30
	  else if(a=="terra"&& b=="fogo")
		  @@vantagem1 =30
	  else	if(a=="agua"&& b=="raio")
		  @@vantagem2 =30
	  else if(a=="fogo"&& b=="agua")
		  @@vantagem2 =30
	  else if(a=="vento"&& b=="fogo")
		  @@vantagem2 =30
	  else	if(a=="terra"&& b=="vento")
		  @@vantagem2 =30
	  else if(a=="fogo"&& b=="agua")
		  @@vantagem2 =30 
	  end
  end
  end
  end
  end
  end
  end
  end
  end
  end
  end
  end
end
	