class StudentRequirementsController < InheritedResources::Base

  private

    def student_requirement_params
      params.require(:student_requirement).permit(:status)
    end
end
