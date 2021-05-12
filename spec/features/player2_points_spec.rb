require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'Show hit points' do
  scenario 'display Player 2 hit points' do
    visit('/')
    fill_in('player_1_name', with: 'John')
    fill_in('player_2_name', with: 'Becca')
    click_button('Submit')

    expect(page).to have_content('Becca: 120HP')
  end
end