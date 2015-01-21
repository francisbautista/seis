class AssessmentsController < InheritedResources::Base
    before_action :authenticate_user!
    before_filter :set_student
    def index
        @assessments = @student.assessments.all
    end

    # GET /assessments/1
    # GET /assessments/1.json
    def show
    end

    # GET /assessments/new
    def new
        @assessment = Assessment.new
        @assessment = @student.assessments.new
    end
  private

    def assessment_params
      params.require(:assessment).permit(:installment, :mode, :tuition, :discount, :discount_desc, :installment_number, :or_number, :student_id, :paid_status)
    end

    def set_student
        @student = Student.find(params[:student_id])
    end
end
