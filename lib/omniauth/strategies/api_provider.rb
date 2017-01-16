require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class ApiProvider < OmniAuth::Strategies::OAuth2
      # change the class name and the :name option to match your application name
      option :name, :api_provider

      option :client_options, {
        :site => "http://localhost:3000",
        :authorize_url => "http://localhost:3000/oauth/authorize"
      }

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"]
          # and anything else you want to return to your API consumers
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/me.json').parsed
      end

    end
  end
end
