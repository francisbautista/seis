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
end
