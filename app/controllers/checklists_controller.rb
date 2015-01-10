class ChecklistsController < InheritedResources::Base

  private

    def checklist_params
      params.require(:checklist).permit(:status, :remarks)
    end
end

