class AdmissionsController < InheritedResources::Base

  private

    def admission_params
      params.require(:admission).permit(:last_name, :first_name, :middle_name, :grade_level, :address, :mode)
    end
end

