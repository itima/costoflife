class ObjectgrouptoobjectgroupsController < ApplicationController
  # GET /objectgrouptoobjectgroups
  # GET /objectgrouptoobjectgroups.xml
  def index
    @objectgrouptoobjectgroups = Objectgrouptoobjectgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @objectgrouptoobjectgroups }
    end
  end

  # GET /objectgrouptoobjectgroups/1
  # GET /objectgrouptoobjectgroups/1.xml
  def show
    @objectgrouptoobjectgroup = Objectgrouptoobjectgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @objectgrouptoobjectgroup }
    end
  end

  # GET /objectgrouptoobjectgroups/new
  # GET /objectgrouptoobjectgroups/new.xml
  def new
    @objectgrouptoobjectgroup = Objectgrouptoobjectgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @objectgrouptoobjectgroup }
    end
  end

  # GET /objectgrouptoobjectgroups/1/edit
  def edit
    @objectgrouptoobjectgroup = Objectgrouptoobjectgroup.find(params[:id])
  end

  # POST /objectgrouptoobjectgroups
  # POST /objectgrouptoobjectgroups.xml
  def create
    @objectgrouptoobjectgroup = Objectgrouptoobjectgroup.new(params[:objectgrouptoobjectgroup])

    respond_to do |format|
      if @objectgrouptoobjectgroup.save
        flash[:notice] = 'Objectgrouptoobjectgroup was successfully created.'
        format.html { redirect_to(@objectgrouptoobjectgroup) }
        format.xml  { render :xml => @objectgrouptoobjectgroup, :status => :created, :location => @objectgrouptoobjectgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @objectgrouptoobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /objectgrouptoobjectgroups/1
  # PUT /objectgrouptoobjectgroups/1.xml
  def update
    @objectgrouptoobjectgroup = Objectgrouptoobjectgroup.find(params[:id])

    respond_to do |format|
      if @objectgrouptoobjectgroup.update_attributes(params[:objectgrouptoobjectgroup])
        flash[:notice] = 'Objectgrouptoobjectgroup was successfully updated.'
        format.html { redirect_to(@objectgrouptoobjectgroup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @objectgrouptoobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /objectgrouptoobjectgroups/1
  # DELETE /objectgrouptoobjectgroups/1.xml
  def destroy
    @objectgrouptoobjectgroup = Objectgrouptoobjectgroup.find(params[:id])
    @objectgrouptoobjectgroup.destroy

    respond_to do |format|
      format.html { redirect_to(objectgrouptoobjectgroups_url) }
      format.xml  { head :ok }
    end
  end
end
