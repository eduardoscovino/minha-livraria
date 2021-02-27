require 'csv'
require_relative 'livro'

class Repository
  def initialize(csv_file)
    # livros eh um array de instancias da classe livro
    @livros = []
    @csv_file = csv_file
    load_csv
  end

  def all
    @livros
  end

  def add_livro(livro)
    @livros << livro
    save_to_csv
  end

  def aumentar_contador(index_livro, numero_livro)
    @livros[index_livro].contador = @livros[index_livro].contador.to_i + numero_livro.to_i
    save_to_csv
  end
  
  def remove_livro(index)
    @recipes.delete_at(index)
  end
  
  def comprar_livro(index_livro, numero_livro)
    subtracao = @livros[index_livro].contador - numero_livro
    if subtracao.zero?
      remove_livro(index_livro)
    else
      @livros[index_livro].contador -= numero_livro
    end
    save_to_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @livros << Livro.new(row[0], row[1], row[2], row[3], row[4])
    end
  end

  # tem que ver se isso causa duplicata no csv
  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @livros.each do |livro|
        csv << [livro.titulo, livro.autor, livro.avaliacao, livro.preco, livro.contador]
      end
    end
  end
end