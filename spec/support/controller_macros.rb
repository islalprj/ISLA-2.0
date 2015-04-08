module ControllerMacros
  def login_user
     before(:each) do
       @request.env["devise.mapping"] = Devise.mappings[:user]
       user = User.create(email: "fake@example.com", password: "password")
       sign_in user
     end
  end
end
