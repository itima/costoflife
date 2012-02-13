class RoutinetoobjectgroupsController < ApplicationController
  # GET /routinetoobjectgroups
  # GET /routinetoobjectgroups.xml
  def index
    @routinetoobjectgroups = Routinetoobjectgroup.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @routinetoobjectgroups }
    end
  end

  # GET /routinetoobjectgroups/1
  # GET /routinetoobjectgroups/1.xml
  def show
    @routinetoobjectgroup = Routinetoobjectgroup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @routinetoobjectgroup }
    end
  end

  # GET /routinetoobjectgroups/new
  # GET /routinetoobjectgroups/new.xml
  def new
    @routinetoobjectgroup = Routinetoobjectgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @routinetoobjectgroup }
    end
  end

  # GET /routinetoobjectgroups/1/edit
  def edit
    @routinetoobjectgroup = Routinetoobjectgroup.find(params[:id])
  end

  # POST /routinetoobjectgroups
  # POST /routinetoobjectgroups.xml
  def create
    @routinetoobjectgroup = Routinetoobjectgroup.new(params[:routinetoobjectgroup])

    respond_to do |format|
      if @routinetoobjectgroup.save
        flash[:notice] = 'Routinetoobjectgroup was successfully created.'
        format.html { redirect_to(@routinetoobjectgroup) }
        format.xml  { render :xml => @routinetoobjectgroup, :status => :created, :location => @routinetoobjectgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @routinetoobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /routinetoobjectgroups/1
  # PUT /routinetoobjectgroups/1.xml
  def update
    @routinetoobjectgroup = Routinetoobjectgroup.find(params[:id])

    respond_to do |format|
      if @routinetoobjectgroup.update_attributes(params[:routinetoobjectgroup])
        flash[:notice] = 'Routinetoobjectgroup was successfully updated.'
        format.html { redirect_to(@routinetoobjectgroup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @routinetoobjectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /routinetoobjectgroups/1
  # DELETE /routinetoobjectgroups/1.xml
  def destroy
    @routinetoobjectgroup = Routinetoobjectgroup.find(params[:id])
    @routinetoobjectgroup.destroy

    respond_to do |format|
      format.html { redirect_to(routinetoobjectgroups_url) }
      format.xml  { head :ok }
    end
  end
end
