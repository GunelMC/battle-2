require 'capybara/rspec'
require_relative '../../app'

Capybara.app = Battle

feature 'Switch turns' do
  scenario 'switching turns' do
    enter_name_and_play
    expect(page).to have_content("John's turn")
  end

  scenario 'switching turns' do
    enter_name_and_play
    click_button("Attack")
    click_button('OK')
    expect(page).to have_content("Becca's turn")
  end
end 