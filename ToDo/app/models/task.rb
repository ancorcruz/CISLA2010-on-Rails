class Task < ActiveRecord::Base
  belongs_to :proyect

  validates_presence_of :proyect_id
end
