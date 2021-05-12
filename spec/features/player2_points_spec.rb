require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'Show hit points' do
  scenario 'display Player 2 hit points' do
    enter_name_and_play
    expect(page).to have_content('Becca: 120HP')
  end
end