class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team_groups = TeamGroup.all
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to teams_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @team_groups = TeamGroup.all
    set_team
  end

  def update
    set_team
    if @team.update(team_params)
      redirect_to teams_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_team
    @team.destroy!
    redirect_to teams_path
  end

  private
  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.expect(team: [ :name, :color_code, :value, :team_group_id ])
  end
end
