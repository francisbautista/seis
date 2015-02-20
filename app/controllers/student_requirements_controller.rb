class StudentRequirementsController < InheritedResources::Base
    load_and_authorize_resource
    before_action :authenticate_user!
  private

    def student_requirement_params
      params.require(:student_requirement).permit(:status, :student_id, :requirement_id)
    end
end
