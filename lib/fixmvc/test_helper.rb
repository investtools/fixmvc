require 'net/ftp'
require 'fixmvc/server'

module FIXMVC
  module TestHelpers
    def with_application(app)
      server = FIXMVC::Server.new.start_in_new_thread(app)

      # TODO: generate a factora acceptor
    end
  end
end
