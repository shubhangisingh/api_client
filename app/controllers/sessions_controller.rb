class SessionsController < ApplicationController
  def create

    auth = request.env['omniauth.auth']
  render json: auth.to_jso
  end
end
