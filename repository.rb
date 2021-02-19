require 'csv'
require_relative 'livro'

class Repository {
  def initialize(livros)
    # livros eh um array de instancias da classe livros
    @livros = []
  end
}