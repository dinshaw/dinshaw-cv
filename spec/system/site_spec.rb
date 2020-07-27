RSpec.describe 'As a user visiting the site', type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'I can see the content' do
    visit '/'
    expect(page).to have_content 'Dinshaw Gobhai'
  end
end
