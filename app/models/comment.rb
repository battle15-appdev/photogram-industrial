class Comment < ApplicationRecord
  #name "author" is unconventional
  belongs_to :author, class_name: "User"
  
  belongs_to :photo
end
