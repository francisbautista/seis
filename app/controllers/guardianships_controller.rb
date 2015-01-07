class GuardianshipsController < ApplicationController
  before_action :set_guardianship, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @guardianships = Guardianship.all
    respond_with(@guardianships)
  end

  def show
    respond_with(@guardianship)
  end

  def new
    @guardianship = Guardianship.new
    respond_with(@guardianship)
  end

  def edit
  end

  def create
    @guardianship = Guardianship.new(guardianship_params)
    @guardianship.save
    respond_with(@guardianship)
  end

  def update
    @guardianship.update(guardianship_params)
    respond_with(@guardianship)
  end

  def destroy
    @guardianship.destroy
    respond_with(@guardianship)
  end

  private
    def set_guardianship
      @guardianship = Guardianship.find(params[:id])
    end

    def guardianship_params
      params.require(:guardianship).permit(:payment_id, :student_id)
    end
end
