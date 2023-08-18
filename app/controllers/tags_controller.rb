class TagsController < ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tag_params)

    @tag.save
    redirect_to root_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :icon, :user_id)
  end
end
