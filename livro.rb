class Livro {
  attr_reader :id, :titulo, :autor, :avaliacao
  attr_accessor :preco
  def initialize(id, titulo, autor, avaliacao, preco)
    @id =         id,
    @titulo =     titulo,
    @autor =      autor,
    @avaliacao =  avaliacao,
    @preco =      preco
  end
}