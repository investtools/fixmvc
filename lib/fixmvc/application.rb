require 'quickfix_ruby'

class FIXMVC::Application < Quickfix::Application

  def initialize
    super
    @sessionID
    @orderID = 0
    @execID = 0
  end

  def onCreate(sessionID)
    @sessionID = sessionID
  end

  def onLogon(sessionID)
  end

  def onLogout(sessionID)
  end

  # Message Client -> Server

  def toAdmin(message, sessionID)
  end

  def toApp(message, sessionID)
  end

  # Message Server -> Client

  def fromAdmin(message, sessionID)
  end

  def fromApp(message, sessionID)
  end

  def genOrderID
    @orderID = @orderID+1
    return @orderID.to_s
  end

  def genExecID
    @execID = @execID+1
    return @execID.to_s
  end
end

