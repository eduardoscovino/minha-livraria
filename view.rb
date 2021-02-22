class View

  def display(livros)
    livros.each_with_index do |index, livro|
      puts "#{index + 1} - #{livro.titulo} / Autor: #{livro.autor} / Rating: #{livro.avaliacao} / Preço: #{livro.preco} / Qtde: #{preco.contador}"
    end
  end
end