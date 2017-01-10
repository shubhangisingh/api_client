 Dir["#{Rails.root}/lib/omniauth/Strategies/*.rb"].each {|file| require file }

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :api_provider, 'sdf', 'dasf'
end
