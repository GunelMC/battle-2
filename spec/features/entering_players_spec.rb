require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'entering players' do
  scenario 'submitting names' do
    enter_name_and_play
    save_and_open_page
    expect(page).to have_content 'John vs Becca' 
  end
end