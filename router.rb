class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "1. Create new Meal"
    puts "2. List all Meals"
    puts '-' * 100
    puts "Enter your action:"
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    end
  end

end