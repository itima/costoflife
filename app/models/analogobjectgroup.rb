class Analogobjectgroup < ActiveRecord::Base
  belongs_to :analogobjectgroup
  belongs_to :objectgroup
  belongs_to :nestedgroup
end
