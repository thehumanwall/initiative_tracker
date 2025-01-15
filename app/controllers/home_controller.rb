class HomeController < ApplicationController
  def index
    @teams = Team.all
    @initiatives = Initiative.all
  end
end
