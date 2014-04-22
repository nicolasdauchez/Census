require 'test_helper'

class PeopleFinderControllerTest < ActionController::TestCase
  test "should get people_search" do
    get :people_search
    assert_response :success
  end

  test "should get people_new_found" do
    get :people_new_found
    assert_response :success
  end

end
