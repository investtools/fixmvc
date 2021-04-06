class FIXMVC::Server

  def initialize
    @server = nil
  end

  def start_in_new_thread(application)
    file = File.join(Rails.root, 'config/bloomberg.cfg')
    @settings = Quickfix::SessionSettings.new(file)
    @storeFactory = Quickfix::FileStoreFactory.new(settings)
    @logFactory = Quickfix::ScreenLogFactory.new(false, false, false)
    @server = Quickfix::SocketInitiator.new(application, storeFactory,
                                            settings, logFactory)
  end

  def start(application)
    start_in_new_thread(application)
    yield self if block_given?
    @server.start

    while(true)
      sleep(1)
    end
  rescue Quickfix::ConfigError, Quickfix::RuntimeError => e
    print e
  end

  def stop
    @server.stop
  end
end
