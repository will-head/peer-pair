require 'sinatra/base'
require_relative 'lib/peer_group_pairs'

# Global for verbose output
# $verbose = true

class PeerPair < Sinatra::Base
  get '/' do
    verbose_output(request.url) if $verbose

    @peer_pairs = PeerGroupPairs.new.shuffle

    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

  private

  def verbose_output(where)
    puts "\n#{where}"
    puts "session: "; p session
    puts "params: "; p params
  end

end
