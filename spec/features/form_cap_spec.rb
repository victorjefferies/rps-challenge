feature 'checking form inputs' do
  scenario 'checking that the user can input their name' do 
    visit('/home')
    fill_in('name', with: 'Dwain')
    click_on('Submit')
    expect(page).to have_content('Hello, Dwain')
  end 
end
