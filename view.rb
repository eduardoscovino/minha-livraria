class View

  def display(livros)
    livros.each_with_index do |livro, index|
      puts "#{index + 1} - #{livro.titulo} / Autor: #{livro.autor} / Rating: #{livro.avaliacao} / Preço: #{livro.preco} / Qtde: #{livro.contador}"
    end
  end

  def perguntar_por_infos(info)
    puts "#{info}?"
    gets.chomp
  end

  def display_livro_adicionado(livro_adicionado)
    puts "Novo livro adicionado"
    puts "#{livro_adicionado.titulo} / Autor: #{livro_adicionado.autor} / Rating: #{livro_adicionado.avaliacao} / Preço: #{livro_adicionado.preco} / Qtde em estoque: #{livro_adicionado.contador}"
  end

  def estocar_livro_existente
    puts "\n\nSelecione o livro que deseja adicionar exemplares (Digite o índice)"
    gets.chomp.to_i - 1
  end

  def quantos_livros_a_estocar
    puts "\n\nQuantos livros deseja estocar?"
    gets.chomp.to_i
  end

  def exibe_mensagem_add_exemplares
    puts "\n\nVolume de exemplares adicionado com sucesso!"
  end

  def pergunta_qual_livro_quer_comprar(livros)
    puts "\n\nQual livro deseja comprar? (Digite o index)"
    display(livros)
    gets.chomp.to_i - 1
  end

  def pergunta_quantos_quer_comprar
    puts "\n\nQuantos exemplares deseja comprar?"
    gets.chomp.to_i
  end

  def quantidade_invalida
    puts "Quantidade inválida de exemplares :("
    puts "Por favor, digite novamente\n\n"
  end

  def exibe_mensagem_compra
    puts "\n\nCompra adicionada no carrinho!"
  end

  def exibe_mensagem_fornecedor
    puts "\n\nCaro fornecedor, o estoque contém os livros:"
  end

  def pede_escolha_fornecedor
    puts "\n\nEscolha uma das opções (Digite o index)"
    puts "1 - Adicionar um novo livro"
    puts "2 - Adicionar livro já existente"
    gets.chomp.to_i
  end
  
end