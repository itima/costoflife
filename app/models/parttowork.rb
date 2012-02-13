class Parttowork < ActiveRecord::Base
  belongs_to :part
  belongs_to :completedwork
end
