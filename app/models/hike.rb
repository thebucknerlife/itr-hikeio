class Hike < ActiveRecord::Base

  validates_presence_of :name, :distance_mi

end
