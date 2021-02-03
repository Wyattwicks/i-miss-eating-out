class Restaurant
  attr_reader :opening_time,
              :name,
              :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []

  end

  def closing_time(hours_open)
    closing_time_int = opening_time.to_i + hours_open
    closing_time = "#{closing_time_int.to_s}:00"
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_for_lunch?
    return true if opening_time.to_i <= 12
    return false if opening_time.to_i > 12
  end

  def menu_dish_names
    menu_dish_names = []
    @dishes.each do |dish|
      menu_dish_names << dish.upcase
    end
    return menu_dish_names
  end

  def announce_closing_time(hours_open)
    new_closing_time = opening_time.to_i + hours_open
    if new_closing_time < 12
      return "#{name} will be closing at #{new_closing_time}:00AM"
      else
      closing_time_in_twelve_hours = new_closing_time - 12
      return "#{name} will be closing at #{closing_time_in_twelve_hours}:00PM"
    end
  end
end
