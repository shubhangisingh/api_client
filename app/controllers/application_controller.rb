class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # rescue_from OAuth2::Error do |exception|
  #   if exception.response.status == 401
  #     session[:user_id] = nil
  #     session[:access_token] = nil
  #     render: 'no no no'
  #   end
  # end
  #
  # private
  # def oauth_client
  #   #@oauth_client ||= OAuth2::client.new('21250f08bce79616cbc6b008bacca8939fcd252ee662d58260732f2159790d05', '54e39848c0a75909fd2d339171efb0dc0050ff073aa98ec4549bd7e3c30d6240' site: '')
  #
  # end
end
