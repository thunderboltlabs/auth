step ":name is a user" do |name|
  FactoryGirl.create(:user, name: name, password: "sekrit")
end

step ":name logs in" do |name|
  user = User.find_by_name(name)
  visit "/"
  fill_in "email", with: user.email
  fill_in "password", with: "sekrit"
  click "Login"
end

step ":name is logged in" do |name|
  fail "Fuck you"
end
