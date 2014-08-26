class AddImageToDestinations < ActiveRecord::Migration

  def self.up
    add_attachment :destinations, :destination_image
  end

  def self.down
    remove_attachment :destinations, :destination_image
  end


end
