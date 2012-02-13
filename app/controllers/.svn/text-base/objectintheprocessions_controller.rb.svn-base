class ObjectintheprocessionsController < ApplicationController
  # GET /objectintheprocessions
  # GET /objectintheprocessions.xml
  def index
    @objectintheprocessions = Objectintheprocession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @objectintheprocessions }
    end
  end

  # GET /objectintheprocessions/1
  # GET /objectintheprocessions/1.xml
  def show
    @objectintheprocession = Objectintheprocession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @objectintheprocession }
    end
  end

  # GET /objectintheprocessions/new
  # GET /objectintheprocessions/new.xml
  def new
    @objectintheprocession = Objectintheprocession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @objectintheprocession }
    end
  end

  # GET /objectintheprocessions/1/edit
  def edit
    @objectintheprocession = Objectintheprocession.find(params[:id])
  end

  # POST /objectintheprocessions
  # POST /objectintheprocessions.xml
  def create
    @objectintheprocession = Objectintheprocession.new(params[:objectintheprocession])

    respond_to do |format|
      if @objectintheprocession.save
        flash[:notice] = 'Objectintheprocession was successfully created.'
        format.html { redirect_to(@objectintheprocession) }
        format.xml  { render :xml => @objectintheprocession, :status => :created, :location => @objectintheprocession }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @objectintheprocession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /objectintheprocessions/1
  # PUT /objectintheprocessions/1.xml
  def update
    @objectintheprocession = Objectintheprocession.find(params[:id])

    respond_to do |format|
      if @objectintheprocession.update_attributes(params[:objectintheprocession])
        flash[:notice] = 'Objectintheprocession was successfully updated.'
        format.html { redirect_to(@objectintheprocession) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @objectintheprocession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /objectintheprocessions/1
  # DELETE /objectintheprocessions/1.xml
  def destroy
    @objectintheprocession = Objectintheprocession.find(params[:id])
    @objectintheprocession.destroy

    respond_to do |format|
      format.html { redirect_to(objectintheprocessions_url) }
      format.xml  { head :ok }
    end
  end
end
