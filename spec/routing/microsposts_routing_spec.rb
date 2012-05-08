require "spec_helper"

describe MicrospostsController do
  describe "routing" do

    it "routes to #index" do
      get("/microsposts").should route_to("microsposts#index")
    end

    it "routes to #new" do
      get("/microsposts/new").should route_to("microsposts#new")
    end

    it "routes to #show" do
      get("/microsposts/1").should route_to("microsposts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/microsposts/1/edit").should route_to("microsposts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/microsposts").should route_to("microsposts#create")
    end

    it "routes to #update" do
      put("/microsposts/1").should route_to("microsposts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/microsposts/1").should route_to("microsposts#destroy", :id => "1")
    end

  end
end
