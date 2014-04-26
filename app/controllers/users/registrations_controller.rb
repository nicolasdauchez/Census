
class Users::RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    super
  end

  def edit
#    super
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    # print "Devise Edit Controller in Registration\n"
    # if current_user
    #     # Custom User will be to display with STATUS to let Admin change them
    #   if current_user.status == 2
    #     if params[:id]
    #       @custom_user = User.find(params[:id])
    #     elsif params[:name]
    #       print "There you are: #{params[:name]}\n"
    #       @custom_user = User.find_by name: params[:name]
    #     elsif params[:email]
    #       @custom_user = User.find_by email: params[:email]
    #     end
    #     # Fix Display Temp
    #     if @custom_user
    #       @user = @custom_user
    #     end
    #   else
    #     # Have to print name but not status Show also the id but not edit it
    #     print "Normal Users\n"
    #   end
    #   super
    # end
  end
end
