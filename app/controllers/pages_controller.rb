class PagesController < ApplicationController

  def home
    @title = "Home"
    #@images variable to access images
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])
  end

  def about
    @title = "About"
    #@images variable to access images
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])
  end

  def contact
    @title = "contact"
    #@images variable to access images
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])  
  end

end
