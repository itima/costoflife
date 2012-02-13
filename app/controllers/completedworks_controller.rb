class CompletedworksController < ApplicationController
  # GET /completedworks
  # GET /completedworks.xml
  def index
    @completedworks = Completedwork.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @completedworks }
    end
  end

  # GET /completedworks/1
  # GET /completedworks/1.xml
  def show
    @completedwork = Completedwork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @completedwork }
    end
  end

  # GET /completedworks/new
  # GET /completedworks/new.xml
  def new
    @completedwork = Completedwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @completedwork }
    end
  end

  # GET /completedworks/1/edit
  def edit
    @completedwork = Completedwork.find(params[:id])
  end

  # POST /completedworks
  # POST /completedworks.xml
  def create
    @completedwork = Completedwork.new(params[:completedwork])

    respond_to do |format|
      if @completedwork.save
        flash[:notice] = 'Completedwork was successfully created.'
        format.html { redirect_to(@completedwork) }
        format.xml  { render :xml => @completedwork, :status => :created, :location => @completedwork }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @completedwork.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /completedworks/1
  # PUT /completedworks/1.xml
  def update
    @completedwork = Completedwork.find(params[:id])

    respond_to do |format|
      if @completedwork.update_attributes(params[:completedwork])
        flash[:notice] = 'Completedwork was successfully updated.'
        format.html { redirect_to(@completedwork) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @completedwork.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /completedworks/1
  # DELETE /completedworks/1.xml
  def destroy
    @completedwork = Completedwork.find(params[:id])
    @completedwork.destroy

    respond_to do |format|
      format.html { redirect_to(completedworks_url) }
      format.xml  { head :ok }
    end
  end
end
