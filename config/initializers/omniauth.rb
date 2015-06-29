Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']

 	OmniAuth.config.on_failure = Proc.new do |env|
    SessionsController.action(:auth_failure).call(env) 
  end 
end

# 