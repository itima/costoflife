class ParttoworksController < ApplicationController
  # GET /parttoworks
  # GET /parttoworks.xml
  def index
    @parttoworks = Parttowork.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parttoworks }
    end
  end

  # GET /parttoworks/1
  # GET /parttoworks/1.xml
  def show
    @parttowork = Parttowork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parttowork }
    end
  end

  # GET /parttoworks/new
  # GET /parttoworks/new.xml
  def new
    @parttowork = Parttowork.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parttowork }
    end
  end

  # GET /parttoworks/1/edit
  def edit
    @parttowork = Parttowork.find(params[:id])
  end

  # POST /parttoworks
  # POST /parttoworks.xml
  def create
    @parttowork = Parttowork.new(params[:parttowork])

    respond_to do |format|
      if @parttowork.save
        flash[:notice] = 'Parttowork was successfully created.'
        format.html { redirect_to(@parttowork) }
        format.xml  { render :xml => @parttowork, :status => :created, :location => @parttowork }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parttowork.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parttoworks/1
  # PUT /parttoworks/1.xml
  def update
    @parttowork = Parttowork.find(params[:id])

    respond_to do |format|
      if @parttowork.update_attributes(params[:parttowork])
        flash[:notice] = 'Parttowork was successfully updated.'
        format.html { redirect_to(@parttowork) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parttowork.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parttoworks/1
  # DELETE /parttoworks/1.xml
  def destroy
    @parttowork = Parttowork.find(params[:id])
    @parttowork.destroy

    respond_to do |format|
      format.html { redirect_to(parttoworks_url) }
      format.xml  { head :ok }
    end
  end
end
