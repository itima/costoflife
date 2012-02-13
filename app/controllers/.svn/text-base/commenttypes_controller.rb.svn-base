class CommenttypesController < ApplicationController
  # GET /commenttypes
  # GET /commenttypes.xml
  def index
    @commenttypes = Commenttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commenttypes }
    end
  end

  # GET /commenttypes/1
  # GET /commenttypes/1.xml
  def show
    @commenttype = Commenttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commenttype }
    end
  end

  # GET /commenttypes/new
  # GET /commenttypes/new.xml
  def new
    @commenttype = Commenttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @commenttype }
    end
  end

  # GET /commenttypes/1/edit
  def edit
    @commenttype = Commenttype.find(params[:id])
  end

  # POST /commenttypes
  # POST /commenttypes.xml
  def create
    @commenttype = Commenttype.new(params[:commenttype])

    respond_to do |format|
      if @commenttype.save
        flash[:notice] = 'Commenttype was successfully created.'
        format.html { redirect_to(@commenttype) }
        format.xml  { render :xml => @commenttype, :status => :created, :location => @commenttype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @commenttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commenttypes/1
  # PUT /commenttypes/1.xml
  def update
    @commenttype = Commenttype.find(params[:id])

    respond_to do |format|
      if @commenttype.update_attributes(params[:commenttype])
        flash[:notice] = 'Commenttype was successfully updated.'
        format.html { redirect_to(@commenttype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commenttype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commenttypes/1
  # DELETE /commenttypes/1.xml
  def destroy
    @commenttype = Commenttype.find(params[:id])
    @commenttype.destroy

    respond_to do |format|
      format.html { redirect_to(commenttypes_url) }
      format.xml  { head :ok }
    end
  end
end
