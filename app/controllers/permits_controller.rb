class PermitsController < InheritedResources::Base

  private

    def permit_params
      params.require(:permit).permit(:date, :level, :test_date, :release, :report_card, :moral_cert, :recommendation)
    end
end

