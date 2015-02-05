class StudentsController < ApplicationController
    before_filter :authenticate_user!
    before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
      if params[:search]
          @query = Student.solr_search do
              fulltext params[:search]
          end
          @students = Student.where(id: @query.results.map(&:id)).page(params[:page]).per_page(4)
      else
          @students = Student.all
          @students = Student.paginate(:page => params[:page], :per_page => 4)
      end
  end

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
      params.require(:student).permit(:id_number, :enrollment_status, :first_name, :middle_name, :last_name, :admission_date, :batch_number, :year_level, :section, :gender, :birthdate, :nationality, :birth_place, :religion, :street, :barangay, :city, :postal_code, :country, :lancaster_resident, :landline, :mobile, :email, :institution_name, :year_level, :school_year, :grade, :general_avg)
    end
end
