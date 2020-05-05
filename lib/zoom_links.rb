class ZoomLinks

  TEST_ZOOM_LINKS = ["[Your Zoom Link 1]", "[Your Zoom Link 2]", "[Your Zoom Link 3]"]

  def self.links 
    connection = PG.connect(dbname: 'peer_group_pairs')
    result = connection.exec(" \
        SELECT * FROM zoom_links; \
        ")
    result.map { |link| link['url'] }
  end

end
