class Destination < ActiveRecord::Base
  has_many :meals


  has_attached_file :destination_image, styles: {
    :medium => "400x300>",
    :thumb => "100x100>" }, :bucket => ENV['PARTS_UNK_BUCKET']

   validates_attachment_content_type :destination_image, :content_type => /\Aimage\/.*\Z/

end
