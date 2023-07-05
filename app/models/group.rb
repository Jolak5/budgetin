class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :entities
  has_one_attached :icon

  validates :name, presence: true, length: { maximum: 250 }

end
