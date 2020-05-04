class PeerGroupPairs
  APR20_PEER_GROUP_1 = "Ed B, Patrick S, Jed S"
  APR20_PEER_GROUP_2 = "Hesam R, Marius B, Tanil S"
  APR20_PEER_GROUP_3 = "Paula D, Joanne Y, Ed A"
  APR20_PEER_GROUP_4 = "Andrew H, Asif R, Gareth W"
  APR20_PEER_GROUP_5 = "Will H, Marija T, Catriona B" 
  APR20_PEER_GROUP_6 = "Colin M, Zsofi S, Joanna C"
  APR20_PEER_GROUP_7 = "Lizzie T, Ellis T, Dec K, Hibo A"

  TEST_PAIR_1 = "(" + APR20_PEER_GROUP_7 + ") & (" + APR20_PEER_GROUP_3 + ")"
  TEST_PAIR_2 = "(" + APR20_PEER_GROUP_2 + ") & (" + APR20_PEER_GROUP_1 + ")"
  TEST_PAIR_3 = "(" + APR20_PEER_GROUP_5 + ") & (" + APR20_PEER_GROUP_4 + ") & " \
              + "(" + APR20_PEER_GROUP_6 + ")"

  APR20_PEER_GROUPS = [
    APR20_PEER_GROUP_1,
    APR20_PEER_GROUP_2,
    APR20_PEER_GROUP_3,
    APR20_PEER_GROUP_4,
    APR20_PEER_GROUP_5,
    APR20_PEER_GROUP_6,
    APR20_PEER_GROUP_7
  ]

  def shuffle(seed = Time.now.to_i)
    peer_group = make_group
    srand(seed)
    peer_group.shuffle!
    pair_1 = "(" + peer_group[0] + ") & (" + peer_group[1] + ")"
    pair_2 = "(" + peer_group[2] + ") & (" + peer_group[3] + ")"
    pair_3 = "(" + peer_group[4] + ") & (" + peer_group[5] + ") & " \
           + "(" + peer_group[6] + ")"
    [pair_1, pair_2, pair_3]
  end

  private

  def make_group
    [
      APR20_PEER_GROUP_1,
      APR20_PEER_GROUP_2,
      APR20_PEER_GROUP_3,
      APR20_PEER_GROUP_4,
      APR20_PEER_GROUP_5,
      APR20_PEER_GROUP_6,
      APR20_PEER_GROUP_7
    ]
  end

end
