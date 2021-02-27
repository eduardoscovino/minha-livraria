class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts "**** Bem-vindo à livraria! ****"
    puts ""

    while @running
      display_mensagem_usuario
      usuario = gets.chomp.to_i
      print `clear`
      acoes(usuario)
    end
  end

  private

  def acoes(usuario)
    case usuario
    when 1 then @controller.comprar
    when 2 then @controller.fornecer
    when 3 then stop
    end
  end

  def display_mensagem_usuario
    puts ""
    puts "Diga quem é você"
    puts "1 - Comprador"
    puts "2 - Fornecedor"
    puts "3 - Sair"
  end

  def stop
    @running = false
  end

end