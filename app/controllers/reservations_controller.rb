class ReservationsController < InheritedResources::Base
    load_and_authorize_resource
    before_filter :set_student
    before_action :authenticate_user!
    def index
        @reservations = @student.reservations.all
    end


    # GET /reservations/1
    # GET /reservations/1.json
    def show
    end

    # GET /reservations/new
    def new
        @reservation = Reservation.new
        @reservation = @student.reservations.new
    end
  private

    def reservation_params
      params.require(:reservation).permit(:paid_status, :remarks, :student_id, :or_number)
    end
    def set_student
        @student = Student.find(params[:student_id])
    end
end
