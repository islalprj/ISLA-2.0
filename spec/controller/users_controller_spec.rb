require "rails_helper"

RSpec.describe UsersController, :type => :controller do
  describe "#index" do
    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end
  end
  describe "#new" do
    it "returns http status 200" do
      expect(response).to have_http_status(200)
    end
  end
  context "when user logged in" do
    login_user
    it "should have a current_user" do
      expect(subject.current_user).to_not be_nil
    end
    it "should get index" do
      get 'index'
      expect(response).to be_success
    end
  end
end
