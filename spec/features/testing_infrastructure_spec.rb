

feature 'Testing Infrastructure' do
  scenario 'Can run content and check page content' do
    visit('/')
    expect(page).to have_content 'testing'
  end
end 
