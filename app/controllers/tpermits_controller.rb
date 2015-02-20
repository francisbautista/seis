class TpermitsController < InheritedResources::Base
    load_and_authorize_resource
    before_filter :set_student
    before_action :authenticate_user!
    def index
        @tpermits = @student.tpermits.all
    end

    # GET /tpermits/1
    # GET /tpermits/1.json
    def show
    end

    def update
        @tpermit = Tpermit.find(params[:id])
        respond_to do |format|
            if @tpermit.update(tpermit_params)
                format.html { redirect_to students_path, notice: 'tpermit was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: 'edit' }
                format.json { render json: @tpermit.errors, status: :unprocessable_entity }
            end
        end
    end

    # GET /tpermits/new
    def new
        @tpermit = Tpermit.new
        @tpermit = @student.tpermits.new
    end
  private

    def tpermit_params
      params.require(:tpermit).permit(:date, :level, :test_date, :test_number, :status, :remarks, :report_card, :moral_cert, :recommendation, :student_id, :or_number, :paid_status)
    end
    def set_student
        @student = Student.find(params[:student_id])
    end
end
