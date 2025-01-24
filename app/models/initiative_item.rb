class InitiativeItem < ApplicationRecord
  belongs_to :initiative
  belongs_to :priority
  belongs_to :status
end
