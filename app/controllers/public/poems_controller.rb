class Public::PoemsController < ApplicationController

  def new
    @poem = Poem.new
  end

  def show
    @poem = Poem.find(params[:id])
    @user = @poem.user
    @poem_comment = PoemComment.new
  end

  def index
    @poems = Poem.all
    @user = current_user
    @poems = params[:tag_id].present? ? Tag.find(params[:tag_id]).poems : Poem.all
  end

  def create
    @poem = Poem.new(poems_params)
    @poem.user_id = current_user.id
    @poem.save
    redirect_to user_path(current_user)
  end

  def edit
    @poem = Poem.find(params[:id])
  end

  def update
    @poem = Poem.find(params[:id])
    if @poem.update(poems_params)
      redirect_to poem_path(@poem), notice: "You have updated book successfully."
    else
      render "edit"
    end
  end

  def destroy
    @poem = Poem.find(params[:id])
    @poem.destroy
    redirect_to poems_path
  end

  private

  def poems_params
    params.require(:poem).permit(:body, tag_ids: [])
  end

end
