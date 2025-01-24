class Priority < ApplicationRecord
  has_many :initiative_items
  validates :name, presence: true
end
