class MealsView
  def ask_name
    puts "Enter meal name:"
    gets.chomp
  end

  def ask_price
    puts "Enter meal price:"
    gets.chomp.to_i
  end

  def display(meals)
    meals.each do |meal|
      puts "ID: #{meal.id} | #{meal.name}: R$ #{meal.price},00"
    end
  end
end
