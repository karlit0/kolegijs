require "spec_helper"

describe KolegijisController do
  describe "routing" do

    it "routes to #index" do
      get("/kolegijis").should route_to("kolegijis#index")
    end

    it "routes to #new" do
      get("/kolegijis/new").should route_to("kolegijis#new")
    end

    it "routes to #show" do
      get("/kolegijis/1").should route_to("kolegijis#show", :id => "1")
    end

    it "routes to #edit" do
      get("/kolegijis/1/edit").should route_to("kolegijis#edit", :id => "1")
    end

    it "routes to #create" do
      post("/kolegijis").should route_to("kolegijis#create")
    end

    it "routes to #update" do
      put("/kolegijis/1").should route_to("kolegijis#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/kolegijis/1").should route_to("kolegijis#destroy", :id => "1")
    end

  end
end
