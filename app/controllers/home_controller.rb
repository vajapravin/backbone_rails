class HomeController < ApplicationController
  def index
  	@grumble = Grumble.new
  end
end
