class Public::PoemsController < ApplicationController

  def new
    @poem = Poem.new
  end

  def show
    @poem = Poem.find(params[:id])
    @user = @poem.user
  end

  def index
    @poems = Poem.all
    @user = current_user
  end

  def create
    @poem = Poem.new(poems_params)
    @poem.user_id = current_user.id
    @poem.save
    redirect_to user_path(current_user)
  end

  def edit
  end

  def update
  end

  def destroy
    @poem = Poem.find(params[:id])
    @poem.destroy
    redirect_to poems_path
  end

  private

  def poems_params
    params.require(:poem).permit(:poem_start, :poem_middle, :poem_end)
  end

end
