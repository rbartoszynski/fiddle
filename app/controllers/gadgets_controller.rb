class GadgetsController < ApplicationController
  def index
    env["warden"].authenticate
  end

  def new
    @gadget = Gadget.new
    @capabilities = [Capability.new, Capability.new]
  end

  def create
    puts "create"

  end
end
