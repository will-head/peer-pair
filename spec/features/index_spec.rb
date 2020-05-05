feature '/' do

  scenario 'shows current pairs' do
    visit '/'
    expect(page).to have_content 'Peer Group Pairs for Wednesday'
    expect(page).to have_content PeerGroupPairs::APR20_PEER_GROUP_1
    expect(page).to have_content PeerGroupPairs::APR20_PEER_GROUP_2
    expect(page).to have_content PeerGroupPairs::APR20_PEER_GROUP_3
    expect(page).to have_content PeerGroupPairs::APR20_PEER_GROUP_4
    expect(page).to have_content PeerGroupPairs::APR20_PEER_GROUP_5
    expect(page).to have_content PeerGroupPairs::APR20_PEER_GROUP_6
    expect(page).to have_content PeerGroupPairs::APR20_PEER_GROUP_7
    expect(page).to have_content "Peer Group Pair 1"
    expect(page).to have_content "Peer Group Pair 2"
    expect(page).to have_content "Peer Group Pair 3"
    expect(page).to have_content "Zoom link: "
  end

end
