class Meal < ActiveRecord::Base
  belongs_to :destination

  # def to_param
  #   name.parameterize
  # end

end
