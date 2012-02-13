class ParametertoobjectgroupsController < ApplicationController
  # GET /parametertoobjectgroups
  # GET /parametertoobjectgroups.xml
  def index
    @parametertoobjectgroups = Parametertoobjectgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parametertoobjectgroups }
    end
  end

  # GET /parametertoobjectgroups/1
  # GET /parametertoobjectgroups/1.xml
  def show
    @parametertoobjectgroup = Parametertoobjectgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parametertoobjectgroup }
    end
  end

  # GET /parametertoobjectgroups/new
  # GET /parametertoobjectgroups/new.xml
  def new
    @parametertoobjectgroup = Parametertoobjectgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parametertoobjectgroup }
    end
  end

  # GET /parametertoobjectgroups/1/edit
  def edit
    @parametertoobjectgroup = Parametertoobjectgroup.find(params[:id])
  end

  # POST /parametertoobjectgroups
  # POST /parametertoobjectgroups.xml
  def create
    @parametertoobjectgroup = Parametertoobjectgroup.new(params[:parametertoobjectgroup])

    respond_to do |format|
      if @parametertoobjectgroup.save
        flash[:notice] = 'Parametertoobjectgroup was successfully created.'
        format.html { redirect_to(@parametertoobjectgroup) }
        format.xml  { render :xml => @parametertoobjectgroup, :status => :created, :location => @parametertoobjectgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parametertoobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parametertoobjectgroups/1
  # PUT /parametertoobjectgroups/1.xml
  def update
    @parametertoobjectgroup = Parametertoobjectgroup.find(params[:id])

    respond_to do |format|
      if @parametertoobjectgroup.update_attributes(params[:parametertoobjectgroup])
        flash[:notice] = 'Parametertoobjectgroup was successfully updated.'
        format.html { redirect_to(@parametertoobjectgroup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parametertoobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parametertoobjectgroups/1
  # DELETE /parametertoobjectgroups/1.xml
  def destroy
    @parametertoobjectgroup = Parametertoobjectgroup.find(params[:id])
    @parametertoobjectgroup.destroy

    respond_to do |format|
      format.html { redirect_to(parametertoobjectgroups_url) }
      format.xml  { head :ok }
    end
  end
end
