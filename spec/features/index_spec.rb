feature '/' do

  scenario 'shows current pairs' do
    visit '/'
    expect(page).to have_content 'Pairs for Wednesday'
  end

end
