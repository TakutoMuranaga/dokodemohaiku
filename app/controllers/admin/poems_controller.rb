class Admin::PoemsController < ApplicationController

  def index
    @poems = Poem.all
    @user = current_user
    if params[:tag]
      Tag.create(name: params[:tag])
    end
  end

end
