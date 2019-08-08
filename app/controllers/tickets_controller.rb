class TicketsController < ApplicationController
  def index
  	@tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
    @ticket.ticket_watchers.build
  end

  def create
    @dashboard = Dashboard.find_by(id: params[:dashboard_id])
    @ticket = @dashboard.tickets.build(tickets_params)
    logger.debug @ticket.errors.inspect
    if @ticket.save
      logger.debug @ticket.errors.inspect
      redirect_to dashboard_path(id: @ticket.dashboard_id), notice: 'チケットの作成に成功しました'
    else
      logger.debug @ticket.errors.inspect
      redirect_to new_dashboard_ticket_path, alert: 'チケットの作成に失敗しました'
    end
  end

  def show
  	@ticket = Ticket.find(params[:id])
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket =  Ticket.find(params[:id])
    if @ticket.update_attributes(tickets_params)
      redirect_to dashboards_path(@ticket.dashboard_id) , notice: 'ユーザーの更新に成功しました'
    else
      render 'edit'
    end
  end

  def destroy
    Ticket.find(params[:id]).destroy
    flash[:success] = "Ticket deleted"
    redirect_to dashboard_ticket_path
  end

  private

  def tickets_params
    params.require(:ticket).permit(:category, :title, :comment_descriptive, :comment_summary, :status, :PIC, :related_ticket1,:related_ticket2,:related_ticket3, :start_date, :due_date, :progress_rate, { :user_ids=> [] })
  end

end
