require 'test_helper'

class PetShelterApiControllerTest < ActionDispatch::IntegrationTest
  test "should get show_all_animals" do
    get pet_shelter_api_show_all_animals_url
    assert_response :success
  end

end
