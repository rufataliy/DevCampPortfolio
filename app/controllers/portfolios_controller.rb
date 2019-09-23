class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:edit,:update,:destroy, :show]
    access all: [:show, :index,:angular], user: {except: [:destroy, :new, :edit, :create, ]}, site_admin: :all
    layout "portfolio"
    def index
        @portfolio_items = Portfolio.by_position
    end

    def angular
      @angular_portfolio_items = Portfolio.angular
    end

    def new
        @portfolio_item = Portfolio.new
        3.times {@portfolio_item.technologies.build}
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
          else
            format.html { render :new }
          end
        end
    end

    def edit
        3.times {@portfolio_item.technologies.build}
    end

    def show

    end

    def update
        respond_to do |format|
          if @portfolio_item.update(portfolio_params)
            format.html { redirect_to portfolios_path, notice: 'Portfio was successfully updated.' }
          else
            format.html { render :edit }
          end
        end
    end

    def destroy
      
      @portfolio_item.destroy
      respond_to do |format|
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was removed' }
        format.json { head :no_content }
      end
    end

    private

    def portfolio_params
      params.require(:portfolio).permit(:title,
                                        :subtitle,
                                        :body,
                                        technologies_attributes:[:name])
    end
    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end
end
