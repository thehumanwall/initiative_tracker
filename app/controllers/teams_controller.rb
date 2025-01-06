class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team_groups = TeamGroup.all
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
    @team_groups = TeamGroup.all
  end

  def create
    @team = Team.new(team_params)
    @team.team_group = TeamGroup.find(params.dig(:team, :team_group))
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
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

  private
  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.expect(team: [ :name, :color_code, :value ])
  end
end
