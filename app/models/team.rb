class Team < ApplicationRecord
  belongs_to :team_group

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :color_code, presence: true
  validates :value, presence: true
end
