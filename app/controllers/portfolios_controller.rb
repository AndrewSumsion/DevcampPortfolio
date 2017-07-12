class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy, :toggle_status]
  def index
    @portfolio_items = Portfolio.all
    @page_title = "My Portfolio"
  end
  def new
    @portfolio_item = Portfolio.new
    @page_title = "Create new portfolio item"
    3.times {@portfolio_item.technologies.build}
  end
  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end
  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end
  def update
    @portfolio_item = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def show
    @portfolio_item = Portfolio.find(params[:id])
  end
  def destroy
    Portfolio.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio item successfully destroyed' }
    end
  end
  def angular
    @angular_portfolio_items = Portfolio.angular
  end
  
  private
  
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end
  private def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
  
end
