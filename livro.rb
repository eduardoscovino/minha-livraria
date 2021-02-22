class Livro
  attr_reader :id, :titulo, :autor, :avaliacao
  attr_accessor :preco, :contador
  def initialize(id, titulo, autor, avaliacao, preco, contador = 1)
    @id =         id
    @titulo =     titulo
    @autor =      autor
    @avaliacao =  avaliacao
    @preco =      preco
    @contador =   contador
  end
end