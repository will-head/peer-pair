require 'peer_group_pairs'

describe PeerGroupPairs do

  describe '#show' do

    it 'returns Array of peer group pairs' do
      expect(subject.show).to eq PeerGroupPairs::TEST_PEER_PAIR
    end
  
  end

end
