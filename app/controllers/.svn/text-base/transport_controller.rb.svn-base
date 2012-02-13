class TransportController < ApplicationController
layout false
  def markmodels

    @id=params[:id]
    @models=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+@id.to_s,:order => 'objectgrouptoobjectgroups.sortorder')
    session[:mark_id]=@id
    session[:model_id]=nil
    session[:modelgroup_id]=nil
    session[:modif_id]=nil

  end

  def modelgroups
       @id=params[:id]
       @mod=Objectgroup.find(@id)
        session[:model_id]=@id
        session[:modelgroup_id]=nil
        session[:modif_id]=nil
  end

end
