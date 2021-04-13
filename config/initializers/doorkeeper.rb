# frozen_string_literal: true
Doorkeeper.configure do
  orm :active_record

  api_only
  base_controller 'ActionController::API'
  grant_flows %w(password)

  resource_owner_from_credentials do |_routes|
   User.authenticate(params[:email], params[:password])
  end

  skip_authorization do
    true
  end
end
