class View

  def display(livros)
    livros.each_with_index do |index, livro|
      puts "#{index + 1} - #{livro.titulo} / Autor: #{livro.autor} / Rating: #{livro.avaliacao} / Preço: #{livro.preco} / Qtde: #{preco.contador}"
    end
  end

  def perguntar_por_infos(info)
    puts "#{info}?"
    gets.chomp
  end

  def display_livro_adicionado(livro_adicionado)
    puts "Novo livro adicionado"
    puts "#{livro.titulo} / Autor: #{livro.autor} / Rating: #{livro.avaliacao} / Preço: #{livro.preco} / Qtde: #{preco.contador}"
  end

  def estocar_livro_existente
    puts "Selecione o livro que deseja adicionar exemplares"
    gets.chomp.to_i
  end

  def quantos_livros_a_estocar
    puts "Quantos livros deseja estocar?"
    gets.chomp.to_i
  end

  def exibe_mensagem_add_exemplares
    puts "Volume de exemplares adicionado com sucesso"
  end
end