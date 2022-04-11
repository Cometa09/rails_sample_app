require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params:{ user: { name: "Example User",
                                          email: "user@example.com",
                                          password: "password",
                                          password_confirmation: "password" }}
       follow_redirect!                                           
    end
    assert_template 'users/show'
    assert_not ﬂash.FILL_IN
  end
end

#!!!!!!!!!!!!!!
# DEPRECATION WARNING: `post_via_redirect` is deprecated and will be removed in Rails 5.1.
# Please use follow_redirect! manually after the request call for the same behavior.
#!!!!!!!!!!!!!!