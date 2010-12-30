class ImagesController < ApplicationController
  # GET /images
  # GET /images.xml

  def gallery
    @images = Image.paginate(:per_page => 1, :page => params[:page])
    @image = @images.first()
    if @image.next
      @has_image = 1
      @next_image = @image.next
    elsif
      @has_image = 0
      @images = Image.paginate(:per_page => 1, :page => params[:page])
      @next_image = @images.first()
    end
    if request.xml_http_request?
      render :partial => "section"
    end
  end

  def index
    #@images = Image.all
    #@images = Image.paginate(:page => params[:page])
    @images = Image.all.paginate(:per_page => 3, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @images }
    end
  end

  # GET /images/1
  # GET /images/1.xml
  def show
    @image = Image.find(params[:id])
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/new
  # GET /images/new.xml
  def new
    @image = Image.new
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])
  end

  # POST /images
  # POST /images.xml
  def create
    @image = Image.new(params[:image])
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])

    respond_to do |format|
      if @image.save
        format.html { redirect_to(@image, :notice => 'Image was successfully created.') }
        format.xml  { render :xml => @image, :status => :created, :location => @image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /images/1
  # PUT /images/1.xml
  def update
    @image = Image.find(params[:id])
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to(@image, :notice => 'Image was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.xml
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    @images = Image.all.paginate(:per_page => 1, :page => params[:page])

    respond_to do |format|
      format.html { redirect_to(images_url) }
      format.xml  { head :ok }
    end
  end
end
