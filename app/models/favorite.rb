class Favorite < ApplicationRecord
  belongs_to :created_by, class_name: "User"
  belongs_to :home
end
