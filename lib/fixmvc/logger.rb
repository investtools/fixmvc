require 'active_support/concern'

module FIXMVC
  def self.logger=(logger)
    @logger = logger
  end

  def self.logger
    @logger ||= create_logger
  end

  module Logger
    extend ActiveSupport::Concern

    def logger
      FIXMVC.logger
    end

    module ClassMethods
      def logger
        FIXMVC.logger
      end
    end
  end

  protected

  def self.create_logger
    ::Logger.new(STDERR).tap do |logger|
      logger.level = ::Logger::INFO
    end
  end
end

