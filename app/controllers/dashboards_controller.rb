class DashboardsController < ApplicationController
	def index
		@tickets = Ticket.all
	end
end
