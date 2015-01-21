class PagesController < ApplicationController
    before_action :authenticate_user!
    def index

    end
    def payments
        @payments = Assessment.all
    end

    def tests
        @tests = Tpermit.all
    end

    def reservations
        @reservations = Reservation.all
    end
end
