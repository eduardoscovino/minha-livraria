require_relative 'controller'
require_relative 'router'
require_relative 'repository'

csv_file = File.join(__dir__, 'livraria.csv')
repository = Repository.new(csv_file)
controller = Controller.new(repository)

router = Router.new(controller)

# start
router.run