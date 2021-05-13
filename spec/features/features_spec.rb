require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'Reduce HP points' do
  scenario 'attacking Player 2' do
    enter_name_and_play
    click_button('Attack')
    expect(page).to have_content('Becca: 110HP')
  end

  feature 'Player has HP points' do
    scenario "see Player 2's hit points" do
      enter_name_and_play
      expect(page).to have_content('Becca: 120HP')
    end
  end 
end