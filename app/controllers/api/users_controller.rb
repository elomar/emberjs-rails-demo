module Api
  class UsersController < AuthController
    actions :show
    before_filter :auth_only!
  end
end
