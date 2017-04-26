class Messages

  #Initialize class variables
  def initialize
    @inbox = Array.new
  end

  #Get and store messages
  def save_message(message)
    @inbox << message
    puts "Your message ID is #{ @inbox.length - 1 }"
  end

  #Recall stored message
  def retrieve_message(id)
    puts "Your message is:" + @inbox[id].to_s
  end

end
