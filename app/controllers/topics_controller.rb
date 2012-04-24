class TopicsController < ApplicationController
  
  # GET /topics
  def index
    @topics = Topic.recent.paginate :page => params[:page], :per_page => 2
    #@category =  Category.find(params[:category_id])
    #@topics = @category.topics
    # add pagination Topic.recent.paginate ....
  end

  # GET /topics/1
  def show
    @topic = Topic.find(params[:id]) 
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end

  # POST /topics
  def create
    @topic = Topic.new(params[:topic])
    if @topic.save
      redirect_to @topic, :notice => 'Topic was successfully created.' 
    else
      render :new
    end 
  end

  # PUT /topics/1
  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(params[:topic])
      redirect_to @topic, :notice => 'Topic was successfully updated.' 
    else
      render :action => "edit"      
    end
  end

  # DELETE /topics/1
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_url  
  end

end
