class PostController < ApplicationController
  def index
    @posts = Post.all
    @current_user_content = current_user.posts
  end
  def new
    # @posts = Post.all
    @posts = current_user.posts.build
  end
  def create
    @doc = current_user.posts.build(title: params[:title], content: params[:content], author_name: params[:author_name], user_id: current_user.id, avatar: params[:avatar])
    @doc.save
    @doc = Post.all
  end
  def show
    @doc = Post.find(params[:id])
  end
  def edit
    @doc = Post.find(params[:id])
  end
  def update
    @doc = Post.find(params[:id])
    if @doc.update(title: params[:title], content: params[:content], author_name: params[:author_name])
      redirect_to '/post/index'
    else
      redirect_to '/post/#{params[:id]}/edit'
    end
  end
  def destroy
    @doc = Post.find(params[:id])
    if @doc.destroy
      redirect_to '/post/index'
    else
      redirect_to '/post/show'
    end
  end
end
