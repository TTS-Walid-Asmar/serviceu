class HomeController < ApplicationController
     def user_profiles
        @user = User.find(params[:id])
    end
end
