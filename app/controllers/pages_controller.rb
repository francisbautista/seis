class PagesController < ApplicationController
  def index
      @payments = Payments.all
  end
end
