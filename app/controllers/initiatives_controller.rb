class InitiativesController < ApplicationController
  def index
    @initiatives = Initiative.all
  end

  def new
    @initiative = Initiative.new
  end

  def create
    @initiative = Initiative.new(initiative_params)
    if @initiative.save
      redirect_to initiatives_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    set_initiative
  end

  def update
    set_initiative
    if @initiative.update(initiative_params)
      redirect_to initiatives_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    set_initiative
    @initiative.destroy!
    redirect_to initiatives_path
  end

  private
  def set_initiative
    @initiative = Initiative.find(params[:id])
  end

  def initiative_params
    params.expect(initiative: [ :name, :description ])
  end
end
