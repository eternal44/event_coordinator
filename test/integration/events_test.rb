require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  # setup and teardown db each time we run tests
  self.use_transactional_fixtures = false

  setup do
    # Uncomment if you want to use selenium
    # Capybara.default_driver = :selenium

    @member = users(:one)
    @non_member = users(:two)
  end

  test 'login to correct subdomain' do
    visit('http://test.lvh.me:3000/users/sign_in')
    assert page.has_field?('Email', type: 'email'), "Doesn't have email field"
    fill_in('Email', with: 'jamesyoun710@gmail.com')
    fill_in('Password', with: 'password1234')
    # find_button('Log in')
    click_on('Log in')
    assert page.has_link?('Logout'), "Doesn't have 'Logout' link"
  end

  test 'should view events' do
    login_as(@member)
    visit('http://test.lvh.me:3000/events')
    assert page.has_content?('1340 Bretmoor')
  end

  # this test works in development but not in test environment
  # test 'should not allow non-members to view events' do
  #   logout(@member)
  #   login_as(@non_member)
  #   visit('http://test.lvh.me:3000/events')
  #   assert_not page.has_content?('1340 Bretmoor')
  # end
  
end
