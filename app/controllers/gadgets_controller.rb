class GadgetsController < ApplicationController
  def index
    env["warden"].authenticate
  end
end
