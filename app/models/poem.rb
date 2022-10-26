class Poem < ApplicationRecord
  
  belongs_to :user
  has_many :poem_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :poem_tags, dependent: :destroy
  has_many :tags, through: :poem_tags

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  # 検索方法分岐
  def self.looks(search, word)
    if search == "perfect_match"
      @poem = Poem.where("body LIKE?","#{word}")
    elsif search == "partial_match"
      @poem = Poem.where("body LIKE?","%#{word}%")
    else
      @poem = Poem.all
    end
  end

end
