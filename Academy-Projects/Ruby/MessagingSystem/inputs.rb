require './messages.rb'

class Inputs
    # Initialize local variables
    def initialize
        @messages = Messages.new
        @quit = false
    end

    # Get users functionality choice
    def get_choice
        while @quit == false
            puts 'Would you like to save(s) a message, retrieve(r) a message, or quit(q)?'
            choice = gets.chomp.downcase
            get_message if choice == 's'

            get_id if choice == 'r'

            if choice == 'q'
                @quit = true
            else
                puts 'Please enter a valid choice'
            end

      end
  end

    # Get user inputted message
    def get_message
        message = ''
        puts 'Please enter the message you would like to save:'
        message = gets.chomp
        @messages.save_message(message)
    end

    # Gets user inputted ID
    def get_id
        id = ''
        puts 'Please enter your message ID:'
        id = gets.chomp.to_i
        @messages.retrieve_message(id)
    end
  end
