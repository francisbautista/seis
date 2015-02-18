class PagesController < ApplicationController
    skip_authorize_resource
    before_action :authenticate_user!
    def index
        authorize! :read, :all
    end
    def payments
        authorize! :read, :all
        @payments = Assessment.all
    end

    def tests
        authorize! :read, :all
        @tests = Tpermit.all
    end

    def reservations
        authorize! :read, :all
        @reservations = Reservation.all
    end

    def classlist
        authorize! :read, :all
        if params[:search]
            @students = Student.class_search(params[:search]).order("gender DESC, last_name ASC")
        else
            @students = Student.order("last_name ASC")
        end
    end

    def year
        authorize! :read, :all
        if params[:search]
            @students = Student.year_search(params[:search]).order("last_name ASC")
        else
            @students = Student.order("last_name ASC")
        end
    end

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

    def existing
        @student = Student.new
    end
end
