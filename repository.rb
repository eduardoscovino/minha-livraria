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

  

  private

  def load_csv
    CSV.foreach(@csv_file) do |row|
      @livros << Livro.new(row[0], row[1], row[2], row[3], row[4], row[5])
    end
  end

  # tem que ver se isso causa duplicata no csv
  def save_to_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @livros.each do |livro|
        csv << [livro.id, livro.titulo, livro.autor, livro.avaliacao, livro.preco, livro.contador]
      end
    end
  end
end