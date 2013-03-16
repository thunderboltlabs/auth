step ":name is a user" do |name|
  FactoryGirl.create(:user, name: name)
end

step ":name logs in" do |name|

end

step ":name is logged in" do |name|
  fail "Fuck you"
end
