class Objectgroup < ActiveRecord::Base
#     acts_as_tree :order=>"title"
# 		acts_as_list :order=>"title", :SCOPE=>:PARENT_ID
def checkparent(fid)
  ok=false
  ogs=Objectgroup.find_all_by_parentid(self.id)
  ogs.each do |og|
   if og.id!=fid
     ok=og.checkparent(fid)
   else
     ok=true
     break
   end
  end
  return ok
end

 def children_nodes
  @childrens=Objectgroup.find(:all,:joins => 'left join objectgrouptoobjectgroups on objectgroups.id=objectgrouptoobjectgroups.objectgroup_id',:conditions => 'objectgrouptoobjectgroups.parentgroup_id='+self.id.to_s)
  return @childrens
 end
end
