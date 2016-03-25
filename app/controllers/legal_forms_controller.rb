class LegalFormsController < InheritedResources::Base

  private

    def legal_form_params
      params.require(:legal_form).permit(:event, :group, :date, :presenter, :twitter, :title, :description, :slides, :fileformat, :livedemo, :audio, :sharedlaptop, :OS, :videooutput, :creativecommons, :email)
    end
end

