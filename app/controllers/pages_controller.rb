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
            @students = Student.order("created_at DESC")
        end
    end

    def year
        authorize! :read, :all
        if params[:search]
            @students = Student.year_search(params[:search]).order("created_at DESC")
        else
            @students = Student.order("created_at DESC")
        end
    end
end
