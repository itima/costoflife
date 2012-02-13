class ParametertoobjectintheprocessionsController < ApplicationController
  # GET /parametertoobjectintheprocessions
  # GET /parametertoobjectintheprocessions.xml
  def index
    @parametertoobjectintheprocessions = Parametertoobjectintheprocession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parametertoobjectintheprocessions }
    end
  end

  # GET /parametertoobjectintheprocessions/1
  # GET /parametertoobjectintheprocessions/1.xml
  def show
    @parametertoobjectintheprocession = Parametertoobjectintheprocession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parametertoobjectintheprocession }
    end
  end

  # GET /parametertoobjectintheprocessions/new
  # GET /parametertoobjectintheprocessions/new.xml
  def new
    @parametertoobjectintheprocession = Parametertoobjectintheprocession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parametertoobjectintheprocession }
    end
  end

  # GET /parametertoobjectintheprocessions/1/edit
  def edit
    @parametertoobjectintheprocession = Parametertoobjectintheprocession.find(params[:id])
  end

  # POST /parametertoobjectintheprocessions
  # POST /parametertoobjectintheprocessions.xml
  def create
    @parametertoobjectintheprocession = Parametertoobjectintheprocession.new(params[:parametertoobjectintheprocession])

    respond_to do |format|
      if @parametertoobjectintheprocession.save
        flash[:notice] = 'Parametertoobjectintheprocession was successfully created.'
        format.html { redirect_to(@parametertoobjectintheprocession) }
        format.xml  { render :xml => @parametertoobjectintheprocession, :status => :created, :location => @parametertoobjectintheprocession }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parametertoobjectintheprocession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parametertoobjectintheprocessions/1
  # PUT /parametertoobjectintheprocessions/1.xml
  def update
    @parametertoobjectintheprocession = Parametertoobjectintheprocession.find(params[:id])

    respond_to do |format|
      if @parametertoobjectintheprocession.update_attributes(params[:parametertoobjectintheprocession])
        flash[:notice] = 'Parametertoobjectintheprocession was successfully updated.'
        format.html { redirect_to(@parametertoobjectintheprocession) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parametertoobjectintheprocession.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parametertoobjectintheprocessions/1
  # DELETE /parametertoobjectintheprocessions/1.xml
  def destroy
    @parametertoobjectintheprocession = Parametertoobjectintheprocession.find(params[:id])
    @parametertoobjectintheprocession.destroy

    respond_to do |format|
      format.html { redirect_to(parametertoobjectintheprocessions_url) }
      format.xml  { head :ok }
    end
  end
end
