require 'test_helper'

class LoginTest < Capybara::Rails::TestCase
  test 'login user' do
    load "#{Rails.root}/db/seeds.rb"

    visit('/')

    assert page.has_content?('Log in')

    page.save_screenshot 'login' + Time.now.to_s + '.png'

    fill_in('email', with: 'huberta@steam.de')
    fill_in('password', with: '12345678')
    click_button('Log in')

    page.save_screenshot 'users' + Time.now.to_s + '.png'

    assert page.has_content?('List of User')
    assert page.has_content?('List of Games')
    assert page.has_content?('Find random game')
  end

  test 'login and show users' do
    load "#{Rails.root}/db/seeds.rb"

    visit('/')

    assert page.has_content?('Log in')

    fill_in('email', with: 'huberta@steam.de')
    fill_in('password', with: '12345678')
    click_button('Log in')

    assert page.has_content?('List of User')
    assert page.has_content?('List of Games')
    assert page.has_content?('Find random game')

    click_link('List of Games')

    assert page.has_content?('Life is Strange')

    page.save_screenshot 'games' + Time.now.to_s + '.png'
  end
end
