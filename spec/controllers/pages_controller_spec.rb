require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET #spots" do
    it "returns http success" do
      get :spots
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #shoots" do
    it "returns http success" do
      get :shoots
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #events" do
    it "returns http success" do
      get :events
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #reports" do
    it "returns http success" do
      get :reports
      expect(response).to have_http_status(:success)
    end
  end

end
