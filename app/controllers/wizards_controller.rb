class WizardsController < ApplicationController

  # GET /wizards
  # GET /wizards.json
  def index
    @wizards = Wizard.all
    # render :"views/wizards/index.html.erb"
  end

  # GET /wizards/1
  # GET /wizards/1.json
  def show
    @wizard = Wizard.find(params[:id])
  end

  # GET /wizards/new
  def new
    @wizard = Wizard.new
  end

  # POST /wizards
  # POST /wizards.json
  def create
    @wizard = Wizard.new(wizard_params)

    if @wizard.save
      redirect_to "/wizards"
    else
      render :new
    end
  end

  def edit
    @wizard = Wizard.find(params[:id])
  end

  def update
    @wizard = Wizard.find(params[:id])

    if @wizard.update_attributes(wizard_params)
      redirect_to "/wizards"
    else
      render :edit
    end
  end


  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def wizard_params
      params.require(:wizard).permit(:name, :title, :age)
    end
end
