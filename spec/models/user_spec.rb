require "rails_helper"

RSpec.describe User, :type => :model do
  xit "expects a single argument" do
    expect(User.self.from_omniauth.arity).to eq 1
  end
end
