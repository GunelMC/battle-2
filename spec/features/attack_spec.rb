require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'Attack player 2' do
  scenario 'Attack player 2 and display confirmation' do 
    enter_name_and_play
    click_button('Attack')
    expect(page).to have_content 'John attacked Becca' 
    end

    scenario 'Attack player 1 and display confirmation' do 
      enter_name_and_play
      click_button('Attack')
      click_button("OK")
      click_button('Attack')
      expect(page).to have_content 'Becca attacked John' 
    end
    
  end