class MainController < ApplicationController
  def index
   # require 'open-uri'
   # @res=open("http://127.0.0.1:3000").read
  end

  def models
  
  @brands=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id IS NULL')
  @level=params[:level]
  @id=params[:id]
   if @level==nil then
    session[:mark_id]=nil
    session[:model_id]=nil
    session[:modelgroup_id]=nil
    session[:modif_id]=nil
   end
  if @level=='0' then
    session[:mark_id]=@id
    session[:model_id]=nil
    session[:modelgroup_id]=nil
    session[:modif_id]=nil
  end
  if @level=='1' then
    session[:model_id]=@id
    session[:modelgroup_id]=nil
    session[:modif_id]=nil
  end

  end


  def firms
  	og_id = params[:og_id].to_i
	if og_id!=0
	    @objectgroup=Objectgroup.find(og_id) 
    	@services = params[:services]
      @one=params[:one]
       @id=params[:mod_id]
       @work_id=params[:work_id]
   @mod = Objectgroup.find(@id)
    @model=Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@id).parentgroup_id)
	  @modelgroup = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@model.id).parentgroup_id)
    @brand = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@modelgroup.id).parentgroup_id)

      if @one=="true"
        @serv=Completedwork.find_by_sql("SELECT services.id,services.title FROM
completedworks
LEFT JOIN objectintheprocessions ON objectintheprocessions.id=completedworks.objectintheprocession_id AND objectintheprocessions.objectgroup_id="+@objectgroup.id.to_s+"
LEFT JOIN routines ON routines.id=completedworks.routine_id
LEFT JOIN services ON completedworks.service_id=services.id
WHERE routines.id="+@work_id.to_s+" GROUP BY services.id")
       session[:title]=Service.find(@services.to_i).title
      else
       session[:title]='Организации'
      end

       	@brands=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id IS NULL')
	@models=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+@brand.id.to_s,:order => 'objectgrouptoobjectgroups.sortorder')	
	@modifs=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+session[:modelgroup_id].to_s,:order => 'objectgrouptoobjectgroups.sortorder')

    else
		redirect_to servicemap_path
    end
  end
  
  def servicemap
  	@services = Service.find(:all)
  end

  def works
  @objectgroup=Objectgroup.find(params[:og_id].to_i)
  @one=params[:one]
	@works = params[:works]
  @id=params[:mod_id]
   @mod = Objectgroup.find(@id)
    @model=Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@id).parentgroup_id)
	  @modelgroup = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@model.id).parentgroup_id)
    @brand = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@modelgroup.id).parentgroup_id)
    
  if @one=="true"
  @wks = Routine.find_by_sql("SELECT 	routines.id,
	routines.title,
	(SUM(work1.price)/COUNT(work1.price)) AS s0,
	(SUM(work2.price)/COUNT(work2.price)) AS s25,
	SUM(work3.price)/COUNT(work3.price) AS s50,
	SUM(work4.price)/COUNT(work4.price) AS s75,
	SUM(work5.price)/COUNT(work5.price)AS s100,
	SUM(work6.price)/COUNT(work6.price)AS s125,
	SUM(work7.price)/COUNT(work7.price)AS s150,
	SUM(work8.price)/COUNT(work8.price)AS s175,
	SUM(work9.price)/COUNT(work9.price)AS s200,
        SUM(work10.price)/COUNT(work10.price)AS smax
	FROM
	ctf_development.routines
	LEFT JOIN routinetoobjectgroups ON routinetoobjectgroups.routine_id=routines.id
	LEFT JOIN objectintheprocessions AS car ON  car.objectgroup_id="+@mod.id.to_s+"
	LEFT JOIN completedworks AS work1 ON work1.routine_id=routines.id AND work1.objectintheprocession_id=car.id AND work1.mileage=0
	LEFT JOIN completedworks AS work2 ON work2.routine_id=routines.id AND work2.objectintheprocession_id=car.id  AND work2.mileage>0 AND work2.mileage<=25000
	LEFT JOIN completedworks AS work3 ON work3.routine_id=routines.id AND work3.objectintheprocession_id=car.id  AND work3.mileage>25000 AND work3.mileage<=50000
	LEFT JOIN completedworks AS work4 ON work4.routine_id=routines.id AND work4.objectintheprocession_id=car.id  AND work4.mileage>50000 AND work4.mileage<=75000
	LEFT JOIN completedworks AS work5 ON work5.routine_id=routines.id AND work5.objectintheprocession_id=car.id  AND work5.mileage>75000 AND work5.mileage<=100000
	LEFT JOIN completedworks AS work6 ON work6.routine_id=routines.id AND work6.objectintheprocession_id=car.id AND work6.mileage>100000 AND work6.mileage<=125000
	LEFT JOIN completedworks AS work7 ON work7.routine_id=routines.id AND work7.objectintheprocession_id=car.id  AND work7.mileage>125000 AND work7.mileage<=150000
	LEFT JOIN completedworks AS work8 ON work8.routine_id=routines.id AND work8.objectintheprocession_id=car.id  AND work8.mileage>150000 AND work8.mileage<=175000
	LEFT JOIN completedworks AS work9 ON work9.routine_id=routines.id AND work9.objectintheprocession_id=car.id AND work9.mileage>175000 AND work9.mileage<=200000
        LEFT JOIN completedworks AS work10 ON work10.routine_id=routines.id AND work10.objectintheprocession_id=car.id AND work10.mileage>200000
	WHERE routinetoobjectgroups.objectgroup_id="+@mod.id.to_s+"  GROUP BY routines.id")
  else
  session[:title]='Работы'
  end
  
  	@brands=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id IS NULL')
	@models=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+@brand.id.to_s,:order => 'objectgrouptoobjectgroups.sortorder')	
	@modifs=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+session[:modelgroup_id].to_s,:order => 'objectgrouptoobjectgroups.sortorder')


  end

  def costs
    session[:title]="Затраты"
    @id=params[:id]
    session[:year]=params[:year]
    session[:modif_id]=@id
    @mod = Objectgroup.find(@id)
    @model=Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@id).parentgroup_id)
	  @modelgroup = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@model.id).parentgroup_id)
    @brand = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@modelgroup.id).parentgroup_id)
   @parts = Part.all
   
   	@brands=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id IS NULL')
	@models=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+@brand.id.to_s,:order => 'objectgrouptoobjectgroups.sortorder')	
	@modifs=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+session[:modelgroup_id].to_s,:order => 'objectgrouptoobjectgroups.sortorder')

  end
  
  def modifications
    session[:title]="Модификации"
    @id=params[:id]
    session[:year]=params[:year]
    session[:modelgroup_id]=@id
    session[:modif_id]=nil
    @model = Objectgroup.find(@id)
	@modelgroup = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@id).parentgroup_id)
    @brand = Objectgroup.find_by_id(Objectgrouptoobjectgroup.find_by_objectgroup_id(@modelgroup.id).parentgroup_id)
    @mods=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+@id.to_s+" and (year(dtend)>='"+session[:year].to_s+"' or dtend is null) and year(dtbegin)<='"+session[:year].to_s+"'",:order => 'objectgrouptoobjectgroups.sortorder')

	@brands=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id IS NULL')
	@models=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+@brand.id.to_s,:order => 'objectgrouptoobjectgroups.sortorder')	
  end

end
