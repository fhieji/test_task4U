class DashboardsController < ApplicationController
	def index
		@dashboards = Dashboard.all.includes(:users)
		@tickets = Ticket.all
	end

	def new
		@dashboard = Dashboard.new
		@dashboard.teams.build
		logger.debug @dashboard.errors.inspect
	end

	def create
		@dashboard = Dashboard.new(dashboards_params)
		if @dashboard.save
			logger.debug @dashboard.errors.inspect
			redirect_to :action => "show", :id => @dashboard[:id]
		else
			logger.debug @dashboard.errors.inspect
			redirect_to dashboards_new_path, alert: 'ダッシュボードの作成に失敗しました'
		end
	end

	def show
		@dashboard = Dashboard.find(params[:id])
		@tickets = Ticket.all
	end

		def edit
			@dashboard = Dashboard.find(params[:id])
		end

		def destroy
			Dashboard.find(params[:id]).destroy
			flash[:success] = "Dashoboard is deleted"
			redirect_to dashboards_path
		end

		def update
			@dashboard = Dashboard.find(params[:id])
			#編集データの取
			if @dashboard.update(dashboards_params)
			#updateが完了したら一覧ページへリダイレクト
			redirect_to dashboard_path(@dashboard)
		else
			render 'edit'
		end

		end


		private

		def dashboards_params
			params.require(:dashboard).permit(:name, :notice,{ :user_ids=> [] }, ticket_attributes: [:id])
		end

	end
