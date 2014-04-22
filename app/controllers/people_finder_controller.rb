class PeopleFinderController < ApplicationController
   before_action :authenticate_user!
  
  def people_search
    @searched_word = params[:q]
    @people = People.search(@searched_word)
  end

  def people_new_found
    @people = People.new
  end

  def create
    params.permit!
    @people = People.new(params[:people])
    if @people.save
      flash[:notice] = "You have successfully added a new person"
      redirect_to :action => "people_new_found"
    end
  end
end
