require 'peer_group_pairs'

describe PeerGroupPairs do

  describe '#shuffle' do

    it 'returns Array of peer group pairs' do
      expect(subject.shuffle(1)).to eq [PeerGroupPairs::TEST_PAIR_1, PeerGroupPairs::TEST_PAIR_2, PeerGroupPairs::TEST_PAIR_3]
    end
  
  end

  # TODO: This test doesn't go here
  # describe '#next_day(day)' do

  #   it 'returns the next Wednesday' do
  #     expect(subject.next_day(:wednesday)).to eq "2020-05-06 00:00:00 +0100"
  #   end

  # end

end
