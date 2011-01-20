class PagesController < ApplicationController

  def home
    @title = "Fall Winter 2011 Bag Collection"
    #@images variable to access images
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])
  end

  def about
    @title = "About"
    #@images variable to access images
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])
  end

  def contact
    @title = "Contact"
    #@images variable to access images
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])  
  end

end
