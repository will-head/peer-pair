feature '/' do

  scenario 'shows current pairs' do
    visit '/'
    expect(page).to have_content 'Pairs for Wednesday'
    expect(page).to have_content PeerGroupPairs::TEST_PAIR_1
    expect(page).to have_content PeerGroupPairs::TEST_PAIR_2
    expect(page).to have_content PeerGroupPairs::TEST_PAIR_3
  end

end
