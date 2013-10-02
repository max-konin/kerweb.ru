class PostsController < ApplicationController
  def index
    @posts = Post.order("created_at DESC").all
    respond_to do |format|
      format.html
      format.json {render json: @posts}
    end
  end

  def show
    @post = Post.find params[:id]
    respond_to do |format|
      format.html
      format.json {render json: @post}
    end
  end

  def mercury_update
    @post = Post.find(params[:id])
    @post.title   = params[:content][:title][:value]
    @post.preview = params[:content][:preview][:value]
    @post.body    = params[:content][:body][:value]
    @post.save!
    render text: ""
  end
end
