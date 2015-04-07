require "rails_helper"

RSpec.describe ItemsController, :type => :controller do
  describe "#toggle" do
    describe "if valid request" do
      it "returns http status 200" do
        item = Item.create(on: true)
        patch :toggle, {id:item.id}
        expect(response).to have_http_status(200)
      end
      it "turns item on if its off" do
        item = Item.create(on: true)
        expect(item.on).to eq(true)
      end
      it "turns item off if its on" do
        item = Item.create(on: false)
        expect(item.on).to eq(false)
      end
    end
  end
end
