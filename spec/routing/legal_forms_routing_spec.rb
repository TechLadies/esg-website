require "rails_helper"

RSpec.describe LegalFormsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/legal_forms").to route_to("legal_forms#index")
    end

    it "routes to #new" do
      expect(:get => "/legal_forms/new").to route_to("legal_forms#new")
    end

    it "routes to #show" do
      expect(:get => "/legal_forms/1").to route_to("legal_forms#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/legal_forms/1/edit").to route_to("legal_forms#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/legal_forms").to route_to("legal_forms#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/legal_forms/1").to route_to("legal_forms#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/legal_forms/1").to route_to("legal_forms#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/legal_forms/1").to route_to("legal_forms#destroy", :id => "1")
    end

  end
end
