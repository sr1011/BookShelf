class Admins::GenresController < ApplicationController
 before_action :authenticate_admin!

def index
  @genres = Genre.all
  @genre = Genre.new
end

 def create
  @genre = Genre.new(genre_params)

    if @genre.save
      redirect_to admins_genres_path
    else
      flash.now[:alert] = "ジャンル名を入力してください"
      redirect_to
    end
 end

 def edit
  @genre = Genre.find(params[:id])
 end

 def update
  @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to admins_genres_path
      flash[:notice_update] = "ジャンル情報を更新しました"
    else
      render 'edit'
    end
 end
 
 private

  def genre_params
    params.require(:genre).permit(:name, :created_at, :updated_at )
  end


end