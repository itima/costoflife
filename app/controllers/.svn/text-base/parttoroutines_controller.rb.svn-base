class ParttoroutinesController < ApplicationController
  # GET /parttoroutines
  # GET /parttoroutines.xml
  def index
    @parttoroutines = Parttoroutine.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @parttoroutines }
    end
  end

  # GET /parttoroutines/1
  # GET /parttoroutines/1.xml
  def show
    @parttoroutine = Parttoroutine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @parttoroutine }
    end
  end

  # GET /parttoroutines/new
  # GET /parttoroutines/new.xml
  def new
    @parttoroutine = Parttoroutine.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @parttoroutine }
    end
  end

  # GET /parttoroutines/1/edit
  def edit
    @parttoroutine = Parttoroutine.find(params[:id])
  end

  # POST /parttoroutines
  # POST /parttoroutines.xml
  def create
    @parttoroutine = Parttoroutine.new(params[:parttoroutine])

    respond_to do |format|
      if @parttoroutine.save
        flash[:notice] = 'Parttoroutine was successfully created.'
        format.html { redirect_to(@parttoroutine) }
        format.xml  { render :xml => @parttoroutine, :status => :created, :location => @parttoroutine }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @parttoroutine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /parttoroutines/1
  # PUT /parttoroutines/1.xml
  def update
    @parttoroutine = Parttoroutine.find(params[:id])

    respond_to do |format|
      if @parttoroutine.update_attributes(params[:parttoroutine])
        flash[:notice] = 'Parttoroutine was successfully updated.'
        format.html { redirect_to(@parttoroutine) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @parttoroutine.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /parttoroutines/1
  # DELETE /parttoroutines/1.xml
  def destroy
    @parttoroutine = Parttoroutine.find(params[:id])
    @parttoroutine.destroy

    respond_to do |format|
      format.html { redirect_to(parttoroutines_url) }
      format.xml  { head :ok }
    end
  end
end
