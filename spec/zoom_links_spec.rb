require 'zoom_links'

describe ZoomLinks do

  describe '#links' do

    it 'returns Array of zoom links' do
      expect(ZoomLinks.links).to eq ZoomLinks::TEST_ZOOM_LINKS
    end

  end

end
