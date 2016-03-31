json.array!(@legal_forms) do |legal_form|
  json.extract! legal_form, :id, :event, :group, :date, :presenter, :twitter, :title, :description, :slides, :fileformat, :livedemo, :audio, :sharedlaptop, :OS, :videooutput, :creativecommons, :email
  json.url legal_form_url(legal_form, format: :json)
end
