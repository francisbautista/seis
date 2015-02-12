class AssessmentsController < InheritedResources::Base
    load_and_authorize_resource
    before_action :authenticate_user!
    before_filter :set_student
    # before_filter :set_assessment
    def index
        @assessments = @student.assessments.all
    end

    # GET /assessments/1
    # GET /assessments/1.json
    def show
        @assessment = Assessment.find(params[:id])
        # @discounted_tuition = @assessment.tuition * ((100-@assessment.discount)*0.01)
    end

    # GET /assessments/new
    def new
        @assessment = Assessment.new
        @assessment = @student.assessments.new
    end

    def update
        @assessment = Assessment.find(params[:id])
        respond_to do |format|
            if @assessment.update(assessment_params)
                format.html { redirect_to student_assessment_path, notice: 'assessment was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: 'edit' }
                format.json { render json: @assessment.errors, status: :unprocessable_entity }
            end
        end
    end
  private

    def assessment_params
      params.require(:assessment).permit(:installment, :mode, :installment_number, :or_number, :student_id, :paid_status)
    end

    def set_student
        @student = Student.find(params[:student_id])
    end
    def set_assessment
        @assessment = Assessment.find(params[:id])
    end
end
