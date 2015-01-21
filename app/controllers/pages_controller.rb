class PagesController < ApplicationController
    def index

    end
    def payments
        @payments = Payment.all
    end
end
