class HomeController < ApplicationController
  def index
    render json: 'welcome';
  end
end