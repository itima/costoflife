class ObjecttypesController < ApplicationController
  # GET /objecttypes
  # GET /objecttypes.xml
  def index
    @objecttypes = Objecttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @objecttypes }
    end
  end

  # GET /objecttypes/1
  # GET /objecttypes/1.xml
  def show
    @objecttype = Objecttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @objecttype }
    end
  end

  # GET /objecttypes/new
  # GET /objecttypes/new.xml
  def new
    @objecttype = Objecttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @objecttype }
    end
  end

  # GET /objecttypes/1/edit
  def edit
    @objecttype = Objecttype.find(params[:id])
  end

  # POST /objecttypes
  # POST /objecttypes.xml
  def create
    @objecttype = Objecttype.new(params[:objecttype])

    respond_to do |format|
      if @objecttype.save
        flash[:notice] = 'Objecttype was successfully created.'
        format.html { redirect_to(@objecttype) }
        format.xml  { render :xml => @objecttype, :status => :created, :location => @objecttype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @objecttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /objecttypes/1
  # PUT /objecttypes/1.xml
  def update
    @objecttype = Objecttype.find(params[:id])

    respond_to do |format|
      if @objecttype.update_attributes(params[:objecttype])
        flash[:notice] = 'Objecttype was successfully updated.'
        format.html { redirect_to(@objecttype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @objecttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /objecttypes/1
  # DELETE /objecttypes/1.xml
  def destroy
    @objecttype = Objecttype.find(params[:id])
    @objecttype.destroy

    respond_to do |format|
      format.html { redirect_to(objecttypes_url) }
      format.xml  { head :ok }
    end
  end
end
