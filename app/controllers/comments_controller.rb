class CommentsController < ApplicationController
  def create
    comment = Comment.new(
      photo_id: params[:photo_id],
      author_id: params[:author_id],
      body: params[:body]
    )
    comment.save

    redirect_to("/photos/#{comment.photo_id}")
  end
end
