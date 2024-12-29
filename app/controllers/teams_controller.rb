class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.team_group = TeamGroup.first
    if @team.save
      redirect_to @team
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)
      redirect_to @team
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end

  private
  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.expect(team: [ :name ])
  end
end
