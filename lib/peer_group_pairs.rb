require 'pg'

class PeerGroupPairs
  # APR20_PEER_GROUP_1 = "Ed B, Patrick S, Jed S"
  # APR20_PEER_GROUP_2 = "Hesam R, Marius B, Tanil S"
  # APR20_PEER_GROUP_3 = "Paula D, Joanne Y, Ed A"
  # APR20_PEER_GROUP_4 = "Andrew H, Asif R, Gareth W"
  # APR20_PEER_GROUP_5 = "Will H, Marija T, Catriona B" 
  # APR20_PEER_GROUP_6 = "Colin M, Zsofi S, Joanna C"
  # APR20_PEER_GROUP_7 = "Lizzie T, Ellis T, Dec K, Hibo A"

  APR20_PEER_GROUP_1 = "Ed B, Patrick, Jed"
  APR20_PEER_GROUP_2 = "Hesam, Marius, Tanil"
  APR20_PEER_GROUP_3 = "Paula, Jo Y, Ed A"
  APR20_PEER_GROUP_4 = "Andrew, Asif, Gareth"
  APR20_PEER_GROUP_5 = "Will, Marija, Cat" 
  APR20_PEER_GROUP_6 = "Colin, Zsofi, Jo C"
  APR20_PEER_GROUP_7 = "Lizzie, Ellis, Dec, Hibo"

  TEST_PAIR_1 = "(" + APR20_PEER_GROUP_7 + ") (" + APR20_PEER_GROUP_3 + ")"
  TEST_PAIR_2 = "(" + APR20_PEER_GROUP_2 + ") (" + APR20_PEER_GROUP_1 + ")"
  TEST_PAIR_3 = "(" + APR20_PEER_GROUP_5 + ") (" + APR20_PEER_GROUP_4 + ") " \
              + "(" + APR20_PEER_GROUP_6 + ")"

  def shuffle(seed = Time.now.to_i)

    # connection = PG.connect(dbname: 'peer_group_pairs')
    # result = connection.exec("SELECT * FROM students WHERE cohort='april2020' AND peer_group=1;")
    # names = result.map {|name| name['name']}
    # p names.join(", ")
    # p make_group

    srand(seed)
    peer_group = make_group.shuffle!
    pair_1 = "(" + peer_group[0] + ") (" + peer_group[1] + ")"
    pair_2 = "(" + peer_group[2] + ") (" + peer_group[3] + ")"
    pair_3 = "(" + peer_group[4] + ") (" + peer_group[5] + ") " \
           + "(" + peer_group[6] + ")"
    [pair_1, pair_2, pair_3]
  end

  private

  def make_group
    group = Array.new
    connection = PG.connect(dbname: 'peer_group_pairs')

    # TODO loop number of peer_groups in db
    (1..7).each do |i|
      result = connection.exec(" \
        SELECT * FROM students \ 
        WHERE cohort='april2020' \ 
        AND peer_group=#{i}; \
        ")
      names = result.map { |name| name['name'] }
      group.push(names.join(", "))
    end 
    return group

    # [
    #   APR20_PEER_GROUP_1,
    #   APR20_PEER_GROUP_2,
    #   APR20_PEER_GROUP_3,
    #   APR20_PEER_GROUP_4,
    #   APR20_PEER_GROUP_5,
    #   APR20_PEER_GROUP_6,
    #   APR20_PEER_GROUP_7
    # ]
  end

end
