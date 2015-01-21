class PagesController < ApplicationController
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
