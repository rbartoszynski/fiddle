class CapabilitiesGadget < ActiveRecord::Base
  belongs_to :capability
  belongs_to :gadget
end
