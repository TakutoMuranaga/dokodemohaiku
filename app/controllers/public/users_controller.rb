class Public::UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
    end
    
    def index
    end
    
    def edit
      @user = User.find(params[:id])
    end
    
    def update
    end
    
    def destroy
    end
    
    private
    
    def user_params
      params.require(:user).permit(:name, :introduction, :profile_image)
    end
end
