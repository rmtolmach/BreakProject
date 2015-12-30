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

describe "GET index" do
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

describe "GET show" do
  it "renders the show page" do
    get :show, neighborhood_params
    expect(subject).to render_template :show
  end
end


end
