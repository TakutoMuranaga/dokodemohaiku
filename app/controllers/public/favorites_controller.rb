class Public::FavoritesController < ApplicationController

  def create
    poem = Poem.find(params[:poem_id])
    favorite = current_user.favorites.new(poem_id:poem.id)
    favorite.save
    redirect_to poem_path(poem)
  end

  def destroy
    poem = Poem.find(params[:poem_id])
    favorite = current_user.favorites.find_by(poem_id:poem.id)
    favorite.destroy
    redirect_to poem_path(poem)
  end

end
