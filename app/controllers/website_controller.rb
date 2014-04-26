class WebsiteController < ApplicationController
  
  def index
    @welcomeStr = ""
    if current_user
      @welcomeStr = "You have <span style='color:red;'>"
      if current_user.status == 0
        @welcomeStr += "student"
      elsif current_user.status == 1
        @welcomeStr += print "lecturer"
      elsif current_user.status == 2
        @welcomeStr += print "admin"
      else
        @welcomeStr += "unknown"
      end
      @welcomeStr += "</span>'s rights."
    else
      @welcomeStr += "Please " \
      + view_context.link_to("login", new_user_session_path) \
      + " to access Intranet's ressources."
    end
    

  end

  def about
  end
  
end
