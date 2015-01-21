class PagesController < ApplicationController
    def index

    end
    def payments
        @payments = Assessment.all
    end

    def tests
        @tests = Permit.all
    end
end
