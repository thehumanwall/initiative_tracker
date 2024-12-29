class Team < ApplicationRecord
  belongs_to :team_group

  validates :name, uniqueness: true
end
