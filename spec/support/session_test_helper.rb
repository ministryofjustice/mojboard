module SessionTestHelper
  def omni_auth_log_in_as(email)
    OmniAuth.config.test_mode = true

    OmniAuth.config.mock_auth[:gplus] = OmniAuth::AuthHash.new(
      provider: 'gplus',
      info: {
        email: email,
        first_name: 'John',
        last_name: 'Doe',
        name: 'John Doe'
      }
    )

    visit 'auth/gplus'
  end
end