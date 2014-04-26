
class Users::SessionController < Devise::SessionsController

def new
  super
  print "Session New Controller\n"
end

def create
  super
  print "Devise Create Controller\n"

end

def edit
  super
  print "Devise Edit Controller\n"
end

end
