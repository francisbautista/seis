class ReservationsController < InheritedResources::Base

  private

    def reservation_params
      params.require(:reservation).permit(:status, :remarks, :amount, :student_id, :or_number)
    end
end

