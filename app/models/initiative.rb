class Initiative < ApplicationRecord
  has_many :initiative_items, dependent: :destroy
end
