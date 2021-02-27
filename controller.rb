require_relative 'repository'
require_relative 'livro'
require_relative 'view'

class Controller
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    display_livros
  end
  
  def fornecer
    @view.exibe_mensagem_fornecedor
    display_livros    
    opcao = @view.pede_escolha_fornecedor
    acoes_fornecedor(opcao)
  end

  def comprar
    # perguntar qual livro deseja comprar
    livros = @repository.all
    opcao = @view.pergunta_qual_livro_quer_comprar(livros)
    # quantos livros quer comprar
    qtde_livros = @view.pergunta_quantos_quer_comprar
    # modificar estoque
    @repository.comprar_livro(opcao, qtde_livros)
    # exibir mensagem de compra
    @view.exibe_mensagem_compra
  end

  private

  def display_livros
    livros = @repository.all
    @view.display(livros)
  end

  def acoes_fornecedor(opcao)
    case opcao
    when 1 then create
    when 2 then estocar
    end
  end

  def create
    titulo = @view.perguntar_por_infos("Título do livro")
    autor = @view.perguntar_por_infos("Autor")
    avaliacao = @view.perguntar_por_infos("Nota")
    preco = @view.perguntar_por_infos("Preço")
    # criar nova instancia
    novo_livro = Livro.new(titulo, autor, avaliacao, preco)
    # colocar no repositorio
    @repository.add_livro(novo_livro)
    # exibir mensagem de sucesso para o usuário
    @view.display_livro_adicionado(novo_livro)
  end
  
  def estocar
    # exibir mensagem com os livros em estoque
    display_livros
    # pedir para selecionar o indice do livro que deseja aumentar o estoque
    opcao = @view.estocar_livro_existente
    # pedir quantidade de livros a estocar
    num_exemplares = @view.quantos_livros_a_estocar
    # aumentar o contador
    @repository.aumentar_contador(opcao, num_exemplares)
    # exibir mensagem do livro com o novo volume
    @view.exibe_mensagem_add_exemplares
  end
end
