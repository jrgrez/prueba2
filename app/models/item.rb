class Item < ApplicationRecord
  belongs_to :category
  belongs_to :user, optional: true, dependent: :destroy

  after_destroy :erase_last

  scope :more_than, ->(size_searched){where("size >= ?", size_searched)}
  scope :no_user, ->{where(user_id: nil)}

  private
  def erase_last
 	self.category.destroy if self.category.items.count == 0
  end
end
