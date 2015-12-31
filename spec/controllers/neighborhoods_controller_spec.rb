require 'rails_helper'

RSpec.describe NeighborhoodsController, type: :controller do
  before :each do
    @neighborhood = Neighborhood.create(name: "CD", description: "nice")
  end

  let(:neighborhood_params)do
    {
      neighborhood: {
        name: "Central District",
        description: "great neighborhood"
      },
      id: @neighborhood.id
    }
  end

  describe "GET 'index'" do
    it "renders the index page" do
      get :index
      expect(subject).to render_template :index
    end
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "GET 'show'" do
    it "renders the show page" do
      get :show, neighborhood_params
      expect(subject).to render_template :show
    end
    it "responds successfully with an HTTP 200 status code" do
      get :show, neighborhood_params
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end

  describe "PATCH 'update'" do
    it "redirects to neighborhoods index page" do
      patch :update, neighborhood_params
      expect(subject).to redirect_to neighborhoods_path
    end
  end

  describe "GET 'new'" do
    it "renders new template" do
      get :new
      expect(subject).to render_template :new
    end
  end

  describe "POST 'create'" do
    it "successfully creates a new neighborhood" do
      expect(Neighborhood.all.length).to eq 1
      post :create, neighborhood_params
      expect(Neighborhood.all.length).to eq 2
    end
    it "redirects to neighborhoods index page" do
      post :create, neighborhood_params
      expect(subject).to redirect_to neighborhoods_path
    end
  end

  describe "DELETE 'destroy'" do
    it "redirects to neighborhoods index page" do
      delete :destroy, id: 1
      expect(subject).to redirect_to neighborhoods_path
    end
  end
end
