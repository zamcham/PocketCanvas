class HomeController < ApplicationController
  before_action :authenticate_user!, except: %i[index]
  def Index; end
end
