class Dashboard < ApplicationRecord
  has_many :users, through: :teams
  has_many :teams
  accepts_nested_attributes_for :teams
end
