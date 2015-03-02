class PagesController < ApplicationController
    skip_authorize_resource
    before_action :authenticate_user!
    def index
        authorize! :read, :all
    end
    def payments
        authorize! :read, :all
        @payments = Assessment.all.order("paid_status DESC")
    end

    def tests
        authorize! :read, :all
        if params[:search]
            @tests = Tpermit.test_search(params[:search]).order("test_date DESC")
        else
            @tests = Tpermit.all
            puts @tests
        end
    end

    def applicants
        authorize! :read, :all
        start_date = DateTime.new(2015,02,28)
        if params[:search]
            @students = Student.index_search(params[:search]).order("last_name ASC").where("created_at > ?", start_date)
        else
            @students = Student.order("last_name ASC").where("created_at > ?", start_date)
        end
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
