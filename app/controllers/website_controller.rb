class WebsiteController < ApplicationController
  
  def index
    if current_user
      if current_user.status == 0
        print "Users Students"
      elsif current_user.status == 1
        print "Users teacher"
      elsif current_user.status == 2
        print "Users admin"
      else
        print "Users Uknown"
      end
    end
    print "test"
  end

  def about
  end
  
end
