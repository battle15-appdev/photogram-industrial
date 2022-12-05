class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params.fetch(:id))
    render "/show"
  end
end
