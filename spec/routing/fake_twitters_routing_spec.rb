require "spec_helper"

describe FakeTwittersController do
  describe "routing" do

    it "routes to #index" do
      get("/fake_twitters").should route_to("fake_twitters#index")
    end

    it "routes to #new" do
      get("/fake_twitters/new").should route_to("fake_twitters#new")
    end

    it "routes to #show" do
      get("/fake_twitters/1").should route_to("fake_twitters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fake_twitters/1/edit").should route_to("fake_twitters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fake_twitters").should route_to("fake_twitters#create")
    end

    it "routes to #update" do
      put("/fake_twitters/1").should route_to("fake_twitters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fake_twitters/1").should route_to("fake_twitters#destroy", :id => "1")
    end

  end
end
