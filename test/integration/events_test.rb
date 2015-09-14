require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  # setup and teardown db each time we run tests
  self.use_transactional_fixtures = false

  setup do
    # Uncomment if you want to use selenium
    # Capybara.default_driver = :selenium
  end

  test 'login' do

    visit('http://test.lvh.me:3000/users/sign_in')
    assert page.has_field?('Email', type: 'email'), "Doesn't have email field"
    fill_in('Email', with: 'jamesyoun710@gmail.com')
    fill_in('Password', with: 'password')
    click_on('Log in')
    assert page.has_link?('Logout'), "Doesn't have 'Logout' link"
  end
end
