require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'Reduce HP points' do
  scenario 'attacking Player 2' do
    enter_name_and_play
    click_button('Attack')
    expect(page).to have_content('Becca: 110HP')
  end
end