class HomeController < ApplicationController
  def index
    @teams = Team.all
    @initiatives = Initiative.all
    @statuses = Status.all
    @priorities = Priority.all
  end
end
