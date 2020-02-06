class ProfileController < ApplicationController
    before_action :authenticate_user!

    def index
        @user = current_user
        @comments = @user.comments
    end
end
