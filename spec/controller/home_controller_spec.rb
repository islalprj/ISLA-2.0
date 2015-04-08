require "rails_helper"
RSpec.describe HomeController, :type => :controller do
  describe "#index" do
    before do
      allow(PopulateSenders).to receive(:get_senders).and_return([])
      get :index
    end
    login_user
    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end
    it "renders home index page" do
      expect(response).to render_template(:index)
    end
    it "finds senders of unread emails" do
      expect(assigns(:senders)).to eq([])
    end
    it "finds emails" do
      expect(assigns(:emails)).to be_truthy
    end
  end
  describe "#control" do
    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end
  end
  describe "#cams" do
    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end
  end
  describe "#traffic" do
    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end
  end
  describe "#monitor" do
    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end
  end
end
