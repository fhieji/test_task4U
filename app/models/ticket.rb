class Ticket < ApplicationRecord
  has_many :ticket_watchers, dependent: :destroy, foreign_key: 'ticket_id'
  has_many :users, through: :ticket_watchers
  accepts_nested_attributes_for :ticket_watchers, allow_destroy: true
end
