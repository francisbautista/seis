class StudentRequirementsController < InheritedResources::Base
    before_action :authenticate_user!
  private

    def student_requirement_params
      params.require(:student_requirement).permit(:status)
    end
end
