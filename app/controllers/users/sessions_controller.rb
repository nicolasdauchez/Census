
class Users::SessionsController < Devise::SessionsController

def new
  super
  print "Session New Controller\n"
end

def create
  super
  print "Devise Create Controller\n"

end
end
