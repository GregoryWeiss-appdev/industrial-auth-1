class UsersController < ApplicationController
  before_action :set_user, only: %i[ show liked feed followers following discover ]
  
  before_action :ensure_current_user_is_correct, only: %i[ feed discover ]
  
  before_action :ensure_current_user_can_view_likes, only: %i[ liked ]

  private

    def set_user
      if params[:username]
        @user = User.find_by!(username: params.fetch(:username))
      else
        @user = current_user
      end
    end

    def ensure_current_user_is_correct
      if current_user != @user
        redirect_back fallback_location: root_url, alert: "You are not permitted to perform this action."
      end
    end

    def ensure_current_user_can_view_likes
      if (current_user != @user) && (@user.followers.exclude? current_user)
        redirect_back fallback_location: root_url, alert: "You are not permitted to perform this action."
      end
    end
end