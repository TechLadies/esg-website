require 'rails_helper'

RSpec.describe "LegalForms", type: :request do
  describe "GET /legal_forms" do
    it "works! (now write some real specs)" do
      get legal_forms_path
      expect(response).to have_http_status(200)
    end
  end
end
