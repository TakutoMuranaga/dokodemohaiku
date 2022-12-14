class Public::UsersController < ApplicationController
    def show
      @user = User.find(params[:id])
      @poems = @user.poems
    end

    def index
      @user = current_user
      @users = User.where.not(id: current_user.id)
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to user_path(@user.id), notice: "You have updated user successfully."
      else
        render :edit
      end
    end

    def destroy
    end
    
    
    def withdrawal
      @user = User.find(params[:id])
      # is_deletedカラムをtrueに変更することにより削除フラグを立てる
      @user.update(is_deleted: true)
      reset_session
      flash[:notice] = "退会処理を実行いたしました"
      redirect_to root_path
    end
    
    private

    def user_params
      params.require(:user).permit(:name, :introduction, :profile_image)
    end
end
