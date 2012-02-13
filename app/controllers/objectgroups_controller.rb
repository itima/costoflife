class ObjectgroupsController < ApplicationController
  # GET /objectgroups
  # GET /objectgroups.xml
  def index
    id = params[:id].nil? ? nil : params[:id]
    @objectgroups = Objectgroup.find_all_by_parent_id(nil) #unless id
    @cur_id=id
    @title = "Транспорт"
  if id!=nil

    @og=Objectgroup.find_by_parent_id(id)
    if @og==nil
     @og=Objectgroup.find(id)
    end
    @title+=": #{Objectgroup.find_by_id(id).title}"
    @anc=@og.ancestors
  end
#    @objectgrpups = Objectgroup.find_by_id(:id)
   # @parent=params[:pgr]
   # if @parent==nil or @parent == 0
   # @objectgroups = Objectgroup.find_all_by_parentid(nil)
   #  @parent = 0
   # else
   #  @objectgroups = Objectgroup.find_all_by_parentid(nil)
   # @objects = Objectgroup.find_all_by_parentid(@parent)
   # end
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @objectgroups }
    end
  end

  # GET /objectgroups/1
  # GET /objectgroups/1.xml
  def show
    @objectgroup = Objectgroup.find(params[:id])
	@title="Карточка: #{@objectgroup.title}"

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @objectgroup }
    end
  end

  # GET /objectgroups/new
  # GET /objectgroups/new.xml
  def new
    @objectgroup = Objectgroup.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @objectgroup }
    end
  end

  # GET /objectgroups/1/edit
  def edit
    @objectgroup = Objectgroup.find(params[:id])
  end

  # POST /objectgroups
  # POST /objectgroups.xml
  def create
    @objectgroup = Objectgroup.new(params[:objectgroup])

    respond_to do |format|
      if @objectgroup.save
        flash[:notice] = 'Objectgroup was successfully created.'
        format.html { redirect_to(@objectgroup) }
        format.xml  { render :xml => @objectgroup, :status => :created, :location => @objectgroup }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @objectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /objectgroups/1
  # PUT /objectgroups/1.xml
  def update
    @objectgroup = Objectgroup.find(params[:id])

    respond_to do |format|
      if @objectgroup.update_attributes(params[:objectgroup])
        flash[:notice] = 'Objectgroup was successfully updated.'
        format.html { redirect_to(@objectgroup) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @objectgroup.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /objectgroups/1
  # DELETE /objectgroups/1.xml
  def destroy
    @objectgroup = Objectgroup.find(params[:id])
    @objectgroup.destroy

    respond_to do |format|
      format.html { redirect_to(objectgroups_url) }
      format.xml  { head :ok }
    end
  end
end
