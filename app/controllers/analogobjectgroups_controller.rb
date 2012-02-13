class AnalogobjectgroupsController < ApplicationController
  # GET /analogobjectgroups
  # GET /analogobjectgroups.xml
  def index
    @analogobjectgroups = Analogobjectgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @analogobjectgroups }
    end
  end

  # GET /analogobjectgroups/1
  # GET /analogobjectgroups/1.xml
  def show
    @analogobjectgroup = Analogobjectgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @analogobjectgroup }
    end
  end

  # GET /analogobjectgroups/new
  # GET /analogobjectgroups/new.xml
  def new
    @analogobjectgroup = Analogobjectgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @analogobjectgroup }
    end
  end

  # GET /analogobjectgroups/1/edit
  def edit
    @analogobjectgroup = Analogobjectgroup.find(params[:id])
  end

  # POST /analogobjectgroups
  # POST /analogobjectgroups.xml
  def create
    @analogobjectgroup = Analogobjectgroup.new(params[:analogobjectgroup])

    respond_to do |format|
      if @analogobjectgroup.save
        flash[:notice] = 'Analogobjectgroup was successfully created.'
        format.html { redirect_to(@analogobjectgroup) }
        format.xml  { render :xml => @analogobjectgroup, :status => :created, :location => @analogobjectgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @analogobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /analogobjectgroups/1
  # PUT /analogobjectgroups/1.xml
  def update
    @analogobjectgroup = Analogobjectgroup.find(params[:id])

    respond_to do |format|
      if @analogobjectgroup.update_attributes(params[:analogobjectgroup])
        flash[:notice] = 'Analogobjectgroup was successfully updated.'
        format.html { redirect_to(@analogobjectgroup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @analogobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /analogobjectgroups/1
  # DELETE /analogobjectgroups/1.xml
  def destroy
    @analogobjectgroup = Analogobjectgroup.find(params[:id])
    @analogobjectgroup.destroy

    respond_to do |format|
      format.html { redirect_to(analogobjectgroups_url) }
      format.xml  { head :ok }
    end
  end
end
