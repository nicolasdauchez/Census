class IntranetController < ApplicationController
  before_action :authenticate_user!
  def index
    @welcomeStr = "BLAH"
  end
end
