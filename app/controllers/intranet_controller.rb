class IntranetController < ApplicationController
   before_action :authenticate_user!

  def index
    if current_user.status == 0
      ## Student Account
      return "Student"
    elsif current_user.status == 1
      ## Lecturer Account
      return "Prof"
    elsif current_user.status == 2
      ## Admin Account
      return "Admin"
    end
  end
end
