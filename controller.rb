require_relative 'repository'
require_relative 'livro'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    display_livros
  end
  
  
  private

  def display_livros
    livros = repository.all
    @view.display(livros)
  end
end


