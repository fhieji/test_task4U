class TicketWatcher < ApplicationRecord
	belongs_to :user, optional: true
  belongs_to :ticket, optional: true
end
