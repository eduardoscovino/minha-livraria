class Livro
  attr_reader :titulo, :autor, :avaliacao, :preco
  attr_accessor :contador
  def initialize(titulo, autor, avaliacao, preco, contador = 1)
    @titulo =     titulo
    @autor =      autor
    @avaliacao =  avaliacao
    @preco =      preco
    @contador =   contador
  end
end