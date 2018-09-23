feature 'check the game-page' do 
  scenario 'clicking the "Let\'s play" button will bring you to the game page' do
    visit('/home')
    fill_in('name', with: 'Dwain')
    click_on('Submit')
    click_on('Let\'s play!')
    expect(page).to have_content('Game page')
  end 

end
