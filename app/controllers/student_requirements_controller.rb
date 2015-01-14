class StudentRequirementsController < InheritedResources::Base

  private

    def student_requirement_params
      params.require(:student_requirement).permit(:student_id, :requirement_id, :status)
    end
end

