class Photo < ApplicationRecord
  #Since name is out of the naming convention(":owner"), add class to associate the association with the model.

  belongs_to :owner, class_name: "User"
  
  has_many :comments
end
