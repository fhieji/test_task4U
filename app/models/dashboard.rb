class Dashboard < ApplicationRecord
  has_many :teams, dependent: :destroy, foreign_key: 'dashboard_id'
  has_many :users, through: :teams
  accepts_nested_attributes_for :teams, allow_destroy: true

  has_many :tickets, dependent: :destroy,inverse_of: :dashboard

end
