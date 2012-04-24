class PartitionsController < ApplicationController
  
  def show
    @partition = Partition.find(params[:id])
    @topics = @partition.topics.recent.paginate :page => params[:page], :per_page => 2
    render "/topics/index"
  end

end
