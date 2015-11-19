Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1670920206521299", "e74cb8983fd5516e80e26b4a4c410cda", {:scope => 'user_location, user_birthday, user_about_me, email'}
end