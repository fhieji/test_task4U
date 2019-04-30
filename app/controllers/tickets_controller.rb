class TicketsController < ApplicationController
  def index
  	@tickets = TicketRegistration.all
  end

  def new
    @tickets = TicketRegistration.new
  end

  def create
    @tickets = Tickets.new(project_params)
    if @tickets.save
      redirect_to root_path, notice: 'チケットの作成に成功しました'
    else
      redirect_to new_project_path, alert: 'チケットの作成に失敗しました'
    end
  end

  def show
  	@tickets = Tickets.find(params[:id])
  end

  def edit
  end

  private

  def tickets_params
    params.require(:tickets).permit(:category, :title, :comment_descriptive, :comment_summary, :status, :PIC, :related_ticket, :start_date, :due_date, :estimated_man_hour, :progress_rate, :watcher) 
  end
end