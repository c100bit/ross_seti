module TextServer
  HEADERS = { content_type: :json, accept: :json }.freeze
  URL = 'https://rocky-depths-37442.herokuapp.com/load_themes'.freeze

  def self.load_themes(themes)
    body = { themes: themes }.to_json
    RestClient.post URL, body, HEADERS
  end
end
