class Initiative < ApplicationRecord
  has_many :initiative_item, dependent: :destroy
end
