class StudentsController < ApplicationController
    before_filter :authenticate_user!
    #load_and_authorize_resource
    before_action :set_student, only: [:show, :edit, :update, :destroy]

    # GET /students
    # GET /students.json
    def index

        start_date = DateTime.new(2015,01,1)
        end_date = DateTime.new(2015,02,28)
        if params[:search]
            @students = Student.index_search(params[:search]).order("last_name ASC").paginate(:page => params[:page]).where("created_at between (?) and (?)", start_date, end_date)
        else
            @students = Student.order("last_name ASC").paginate(:page => params[:page]).where("created_at between (?) and (?)", start_date, end_date)
        end
        # if params[:search]
        #     @query = Student.solr_search do
        #         fulltext params[:search]
        #     end
        #     @students = @query.results
        # else
        #     @students = Student.all
        #     @students = Student.paginate(:page => params[:page], :per_page => 4)
        # end
    end

    # def class
    #     @students = Student.
    # end

    # GET /students/1
    # GET /students/1.json
    def show
        @requirements = Requirement.all
        @sr = StudentRequirement.all
        @assessments = @student.assessments.all
        @tpermits = @student.tpermits.all
    end

    # GET /students/new
    def new
        @student = Student.new
    end

    # GET /students/1/edit
    def edit
    end

    # POST /students
    # POST /students.json
    def create
        @student = Student.new(student_params)

        respond_to do |format|
            if @student.save
                format.html { redirect_to @student, notice: 'Student was successfully created.' }
                format.json { render :show, status: :created, location: @student }
            else
                format.html { render :new }
                format.json { render json: @student.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /students/1
    # PATCH/PUT /students/1.json
    def update
        respond_to do |format|
            if @student.update(student_params)
                format.html { redirect_to @student, notice: 'Student was successfully updated.' }
                format.json { render :show, status: :ok, location: @student }
            else
                format.html { render :edit }
                format.json { render json: @student.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /students/1
    # DELETE /students/1.json
    def destroy
        @student.destroy
        respond_to do |format|
            format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
        @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
        params.require(:student).permit(:id_number, :enrollment_status, :first_name, :middle_name, :last_name, :admission_date, :batch_number, :year_level, :section, :gender, :birthdate, :nationality, :birth_place, :religion, :street, :barangay, :city, :postal_code, :country, :lancaster_resident, :landline, :mobile, :email, :full_name, :institution_name, :year_level, :school_year, :grade, :general_avg)
    end
end
