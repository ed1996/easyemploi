class EmploisController < ApplicationController

  before_action :set_emploi, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @emplois = current_user.emplois
  end

  def new
    @emploi = current_user.emplois.build
  end

  def create
    @emploi = current_user.emplois.build(emploi_params)
    if @emploi.save
      redirect_to new_subscriber_path, notice:"Votre demande de recherche a été ajouté avec succès désormais procéder au paiement"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @emploi.update(emploi_params)
      redirect_to @emploi, notice:"Modifications enregistrée..."
    else
      render :edit
    end
  end

  private
  def set_emploi
    @emploi = Emploi.find(params[:id])
  end

  def emploi_params
    params.require(:emploi).permit(:name, :phone, :email, :profession, :remuneration)
  end

end
