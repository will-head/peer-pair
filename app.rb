require 'sinatra/base'

# Global for verbose output
# $verbose = true

class PeerPair < Sinatra::Base
  get '/' do
    verbose_output(request.url) if $verbose

    'Hello World'
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
