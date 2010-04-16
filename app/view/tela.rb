module Tela
  def self.limpar
      puts "\e[2J\e[f"
  end
  
  def self.continue
    msg = "Pressione [ENTER] para continuar..."
    puts msg
    str = gets
    until str == "\n"
      puts msg
      str = gets
    end
  end
  
  def self.get_opcao
    opcao_str = gets.chomp
    opcao = opcao_str.to_i if opcao_str.to_i.to_s == opcao_str
    return -1 if opcao.nil?
    opcao
  end
  
  def self.desenhar_monstro(elemento, expressao)
    olhos = case expressao
      when :felicidade then ['^', '^']
      when :raiva then ['\\', '/']
      when :morto then ['x', 'x']
      when :machucado then ['>', '<']
    end
    case elemento
    when :raio
      olhos = ['o', 'o'] unless olhos
      puts "<^^^^^^^>\n|  #{olhos[0]} #{olhos[1]}  |\n| [===] |\n `-| |-'"
    when :agua
      olhos = ['0', '0'] unless olhos
      puts "~~~~~~~~~\nl #{olhos[0]}   #{olhos[1]} l\nl   ~   l\nl''| |''l"
    when :fogo
      olhos = ['@', '@'] unless olhos
      puts "{$$$$$$$}\n{  #{olhos[0]} #{olhos[1]}  }\n{   e   }\n **| |**"
    when :vento
      olhos = ['6', '6'] unless olhos
      puts "(%%%%%%%%)\n(% #{olhos[0]}  #{olhos[1]} %)\n(%   ,  %)\n333| |3333"
    when :terra
      olhos = ['P', 'P'] unless olhos
      puts "**********\n*  #{olhos[0]}  #{olhos[1]}  *\n*   _    *\nTTT]  [TTT"
    end
  end
end