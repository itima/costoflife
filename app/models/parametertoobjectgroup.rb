class Parametertoobjectgroup < ActiveRecord::Base
  belongs_to :parameter
  belongs_to :objectgroup
end
