class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  scope :more_than, ->(size_searched){where("size >= ?", size_searched)}
  scope :no_user, ->{where(user_id: nil)}
end
