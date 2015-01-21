class PermitsController < InheritedResources::Base
    before_filter :set_student
    def index
        @permits = @student.permits.all
    end


    # GET /permits/1
    # GET /permits/1.json
    def show
    end

    # GET /permits/new
    def new
        @permit = Permit.new
        @permit = @student.permits.new
    end
  private

    def permit_params
      params.require(:permit).permit(:date, :level, :test_date, :release, :report_card, :moral_cert, :recommendation, :student_id, :or_number, :amount, :paid_status)
    end

    def set_student
        @student = Student.find(params[:student_id])
    end

end
