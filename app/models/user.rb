class User < ApplicationRecord
	has_many :items, dependent: :destroy

	validates :name, presence: true
	validates :email, uniqueness: true

	before_save :capitalize

	private
	def capitalize
		name = self.name
		name[0] = name[0].capitalize
		self.name = name
	end
end
