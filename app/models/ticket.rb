class Ticket < ApplicationRecord
  has_many :users, through: :ticket_watchers
  has_many :ticket_watchers
  accepts_nested_attributes_for :ticket_watchers
end
