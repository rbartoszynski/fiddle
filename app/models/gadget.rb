class Gadget < ActiveRecord::Base
  has_and_belongs_to_many :capabilities
end
