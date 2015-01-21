class PagesController < ApplicationController
    def index

    end
    def payments
        @payments = Payment.all
    end

    def tests
        @tests = Test.all 
    end
end
