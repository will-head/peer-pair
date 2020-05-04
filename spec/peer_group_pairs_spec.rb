require 'peer_group_pairs'

describe PeerGroupPairs do

  describe '#shuffle' do

    it 'returns Array of peer group pairs' do
      expect(subject.shuffle(1)).to eq [PeerGroupPairs::TEST_PAIR_1, PeerGroupPairs::TEST_PAIR_2, PeerGroupPairs::TEST_PAIR_3]
    end
  
  end

end
