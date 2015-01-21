class AssessmentsController < InheritedResources::Base

  private

    def assessment_params
      params.require(:assessment).permit(:installment, :mode, :tuition, :discount, :discount_desc, :installment_number, :or_number, :student_id)
    end
end

