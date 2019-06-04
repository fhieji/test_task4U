class TicketsController < ApplicationController
  def index
  	@tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(tickets_params)
    if @ticket.save
      redirect_to tickets_path, notice: 'チケットの作成に成功しました'
    else
      redirect_to new_ticket_path, alert: 'チケットの作成に失敗しました'
    end
  end

  def show
  	@ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def destroy
    Ticket.find(params[:id]).destroy
    flash[:success] = "Ticket deleted"
    redirect_to tickets_path
  end

  private

  def tickets_params
    params.require(:ticket).permit(:category, :title, :comment_descriptive, :comment_summary, :status, :PIC, :related_ticket1,:related_ticket2,:related_ticket3, :start_date, :due_date, :progress_rate, :watcher)
  end
end
