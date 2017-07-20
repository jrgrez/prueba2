class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true

  after_destroy :erase_category

  scope :more_than, ->(size_searched){where("size >= ?", size_searched)}
  scope :no_user, ->{where(user_id: nil)}

  private
  def erase_category
 	self.category.destroy if self.category.items.count == 0
  end
end
