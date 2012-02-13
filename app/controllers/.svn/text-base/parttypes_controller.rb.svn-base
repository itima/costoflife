class ParttypesController < ApplicationController
  # GET /parttypes
  # GET /parttypes.xml
  def index
    @parttypes = Parttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parttypes }
    end
  end

  # GET /parttypes/1
  # GET /parttypes/1.xml
  def show
    @parttype = Parttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parttype }
    end
  end

  # GET /parttypes/new
  # GET /parttypes/new.xml
  def new
    @parttype = Parttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parttype }
    end
  end

  # GET /parttypes/1/edit
  def edit
    @parttype = Parttype.find(params[:id])
  end

  # POST /parttypes
  # POST /parttypes.xml
  def create
    @parttype = Parttype.new(params[:parttype])

    respond_to do |format|
      if @parttype.save
        flash[:notice] = 'Parttype was successfully created.'
        format.html { redirect_to(@parttype) }
        format.xml  { render :xml => @parttype, :status => :created, :location => @parttype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parttypes/1
  # PUT /parttypes/1.xml
  def update
    @parttype = Parttype.find(params[:id])

    respond_to do |format|
      if @parttype.update_attributes(params[:parttype])
        flash[:notice] = 'Parttype was successfully updated.'
        format.html { redirect_to(@parttype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parttypes/1
  # DELETE /parttypes/1.xml
  def destroy
    @parttype = Parttype.find(params[:id])
    @parttype.destroy

    respond_to do |format|
      format.html { redirect_to(parttypes_url) }
      format.xml  { head :ok }
    end
  end
end
