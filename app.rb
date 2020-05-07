require 'sinatra/base'
require_relative 'lib/peer_group_pairs'
require_relative 'lib/zoom_links'

# Global for verbose output
# $verbose = true

class PeerPair < Sinatra::Base

  before '/' do
    verbose_output(request.url) if $verbose
  end

  get '/' do
    # verbose_output(request.url) if $verbose

    @this_wednesday = this_wednesday
    @peer_pairs = PeerGroupPairs.new.shuffle(@this_wednesday.to_i)
    @zoom_links = ZoomLinks.links

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

  def this_wednesday
    date = Date.today
    date += 1 + ((2 - date.wday) % 7)
    date.to_time
  end

end
