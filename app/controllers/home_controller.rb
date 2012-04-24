class HomeController < ApplicationController
  

  
  def index
    @partitions = Partition.all
    @selected_menu = 'home'
  end

  def contact
    @selected_menu = 'contact'
  end

  def about
    @selected_menu = 'about'
  end


end
