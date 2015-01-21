class RequirementsController < InheritedResources::Base
    before_action :authenticate_user!

  private

    def requirement_params
      params.require(:requirement).permit(:name, :status, :required, :remarks)
    end
end
