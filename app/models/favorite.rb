class Favorite < ApplicationRecord
  # when clicked call a method that assigns home_id and created_by as current_user
  belongs_to :created_by, class_name: "User"
  belongs_to :home
end
