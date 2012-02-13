class CreateTestData < ActiveRecord::Migration
  def self.up	
		    	
    1.times do |i|
    	@brand=Objectgroup.new
		@brand.title = "Марка #{i}"  
  
 		@brand.dtbegin = Date.new(Date.today.year-rand(10), Date.today.month, Date.today.day)

#    		@brand.dtend = Date.new(@brand.dtbegin.year + rand(5), Date.today.month, Date.today.day)
#    		@brand.dtend > Date.today ? @brand.dtend = Date.today : @brand.dtend
		@brand.save
		
		(1+rand(10)).times do |m|
	    	@modelgroup=Objectgroup.new
			@modelgroup.title = "Модельный ряд #{m}"  
	  
	 		@modelgroup.dtbegin = Date.new(Date.today.year-rand(10), Date.today.month, Date.today.day)
	   		@modelgroup.dtbegin < @brand.dtbegin ? @modelgroup.dtbegin = @brand.dtbegin : @modelgroup.dtbegin
	   			
# 	   		@modelgroup.dtend = Date.new(@modelgroup.dtbegin.year + rand(5), Date.today.month, Date.today.day)
# 	   		@modelgroup.dtend > @brand.dtend ? @modelgroup.dtend = @brand.dtend : @modelgroup.dtend

			@modelgroup.save
			
			@mgtob = Objectgrouptoobjectgroup.new
			@mgtob.parentgroup_id = @brand.id
			@mgtob.objectgroup_id = @modelgroup.id			
			@mgtob.save
			
			(1+rand(5)).times do |md|
		    	@model=Objectgroup.new
				@model.title = "Модель #{md}"  
		  
		 		@model.dtbegin = Date.new(Date.today.year-rand(10), Date.today.month, Date.today.day)
		   		@model.dtbegin < @modelgroup.dtbegin ? @model.dtbegin = @modelgroup.dtbegin : @model.dtbegin
		   			
# 		   		@model.dtend = Date.new(@model.dtbegin.year + rand(5), Date.today.month, Date.today.day)
# 		   		@model.dtend > @modelgroup.dtend ? @model.dtend = @modelgroup.dtend : @model.dtend
	
				@model.save
				
				@mtomg = Objectgrouptoobjectgroup.new
				@mtomg.parentgroup_id = @modelgroup.id
				@mtomg.objectgroup_id = @model.id			
				@mtomg.save
				
				(1+rand(3)).times do |mod|
			    	@mod=Objectgroup.new
					@mod.title = "Модификация #{mod}"  
			  
			 		@mod.dtbegin = Date.new(Date.today.year-rand(10), Date.today.month, Date.today.day)
			   		@mod.dtbegin < @model.dtbegin ? @mod.dtbegin = @modelgroup.dtbegin : @mod.dtbegin
			   			
# 			   		@mod.dtend = Date.new(@mod.dtbegin.year + rand(5), Date.today.month, Date.today.day)
# 			   		@mod.dtend > @model.dtend ? @mod.dtend = @model.dtend : @mod.dtend
		
					@mod.save
					
					@mtom = Objectgrouptoobjectgroup.new
					@mtom.parentgroup_id = @model.id
					@mtom.objectgroup_id = @mod.id			
					@mtom.save
										
				end
			end
		
		end

    end
    
    20.times do |p|
    	@part = Part.new
    	@part.title = "Запчасть #{p}"
    	@part.save
    end

	@parts = Part.find(:all)

	@param = Parameter.new
	@param.title = "Пробег"
	@param.save
	
	10.times do |s|
		@service = Service.new
		@service.title = "Сервис #{s}"
		@service.address = "г. Москва, ул. #{s}, д. #{s}"
		@service.phone = "#{s}#{s}#{s}-#{s}#{s}-#{s}#{s}"
		@service.fax  = "#{s}#{s}#{s}-#{s}#{s}-#{s}#{s}"
		@service.googlegeo = "55.#{s}02825,37.#{s}3504"
		@service.cityid = "Москва"
		@service.save
	end
	
	20.times do |rw|
		@regwork = Routine.new
		@regwork.title = "Работа #{rw}"
		@regwork.save
		
		@rtoog = Routinetoobjectgroup.new
		@rtoog.routine_id = @regwork.id
		@rtoog.objectgroup_id = @mod.id
		@rtoog.save		
						
 		milage = rand(10) * 25000				
	end
	
	@regworks = Routine.find(:all)
	@services = Service.find(:all)

	10.times do |ob|
		@opos = Objectintheprocession.new
		@opos.objectgroup_id = @mod.id
		@opos.title = "Машина #{ob}"
		@opos.save
		
		(1+rand(10)).times do |cw|
			@compwork = Completedwork.new
			@compwork.objectintheprocession_id = @opos.id
			@compwork.service_id = @services[rand(@services.size)].id
			rid = rand(@regworks.size)			
			@compwork.routine_id = @regworks[rid].id
			@compwork.title = @regworks[rid].title
			@compwork.dtbegin = Time.now
			@compwork.dtend = Time.now
			@compwork.price = rand(150) + 100 
			@compwork.mileage = rand(10) * 25000		
			@compwork.save
			
			(1+rand(3)).times do |up|
				@usedpart = Parttowork.new
				@usedpart.completedwork_id = @compwork.id
				@usedpart.part_id = @parts[rand(@parts.size)].id
				@usedpart.price = rand(150) + 100 
				@usedpart.save
			end
		end
		
		3.times do |op|
			milage = rand(10) * 25000				
			@ptoopos = Parametertoobjectintheprocession.new
			@ptoopos.parameter_id = @param.id
			@ptoopos.objectintheprocession_id = @opos.id
			@ptoopos.valuenumber = milage
			@ptoopos.save
		end
	end
  end

  def self.down
    Objectgroup.delete_all
    Objectgrouptoobjectgroup.delete_all
    Routine.delete_all
    Routinetoobjectgroup.delete_all
    Part.delete_all
    Parttowork.delete_all
  end
end
