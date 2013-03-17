step ":name is a user" do |name|
  create(:user, name: name, password: "sekrit")
end

step ":name logs in" do |name|
  user = User.find_by_name(name)
  visit "/users/sign_in"
  fill_in "Email", with: user.email
  fill_in "Password", with: "sekrit"
  click_on "Sign in"
end

step ":name is logged in" do |name|
  page.should have_content("Hello, #{name}")
end
