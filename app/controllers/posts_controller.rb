class PostsController < ApplicationController
  # GET /posts
  def index
    @topic = Topic.find(params[:topic_id])
    @posts = @topic.posts.recent.paginate :page => params[:page], :per_page => 2
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])

  end

  # GET /posts/new
  def new
    @topic = Topic.find(params[:topic_id])
    @post = Post.new

  end

  # GET /posts/1/edit
  def edit
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:id])

  end

  # POST /posts
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.new(params[:post])

      if @post.save
        redirect_to topic_posts_path [@topic], :notice => 'Post was successfully created.'
      else
        render new_topic_post_path 
      end

  end

  # PUT /posts/1
  def update
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:id])

      if @post.update_attributes(params[:post])
        redirect_to [@topic, @post], :notice => 'Post was successfully updated.' 
      else
        render :action => "edit" 
      end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to topic_posts_url 

  end
end
