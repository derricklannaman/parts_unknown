namespace :db do

  task destination: :environment do

    Destination.destroy_all
    Meal.destroy_all

    def locations
      ['Jamaica', 'Havana', 'Grand Cayman', 'Columbia', 'Peru']
    end

    def random_location
      locations.sample
    end

    def flavor
      ['Curry', 'Jerk', 'Spicy', 'Pepper', 'Glazed'].sample
    end

    def meat
      ['Chicken', 'Fish', 'Goat', 'OxTails'].sample
    end

    (locations.size).times do
      Destination.create(name: random_location, description: "A dreamy location")
    end

    20.times do
      locale = Destination.all
      random = locale.sample
      Meal.create(name: "#{ flavor + ' ' + meat }",
                  description: "What a lovely and beautiful lunch....",
                  destination_id: random.id)
    end
  end
end