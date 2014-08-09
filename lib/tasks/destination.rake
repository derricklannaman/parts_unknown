namespace :db do

  task destination: :environment do

    Destination.destroy_all


    def locations
      ['Jamaica', 'Havana', 'Grand Cayman', 'Columbia', 'Peru']
    end

    def random_location
      locations.sample
    end

    (locations.size).times do
      Destination.create(name: random_location, description: "A dreamy location")
    end
  end
end