Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1428764170786320', '477869960b68be591bfad76c0b1a64d5'

 	OmniAuth.config.on_failure = Proc.new do |env|
    SessionsController.action(:auth_failure).call(env) 
  end 
end

# 