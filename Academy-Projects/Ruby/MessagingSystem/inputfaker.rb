require './messages.rb'

class Input_faker
    # Initialize local variables
    def initialize
        @messages = Messages.new
        @quit = false
        @message_test = []
        @if_test = []
        @choice_test = []
        @message_test = %w(Test0 Test1 Test2 Test3 Test4 Test5)
        @id_test = %w(0 1 2 3 4 5)
        @choice_test = %w(s r s r s r s r s r s r q)
      end

    # Get users functionality choice
    def get_choice
        while @quit == false
            puts 'Would you like to save(s) a message, retrieve(r) a message, or quit(q)?'
            choice = @choice_test.shift
            get_message if choice == 's'

            get_id if choice == 'r'

            if choice == 'q'
                @quit = true
            else
                puts 'Please enter a valid choice'
            end

      end
  end

    # Get test message
    def get_message
        message = ''
        puts 'Please enter the message you would like to save:'
        message = @message_test.shift
        puts "> #{message}"
        @messages.save_message(message)
    end

    # Get test id
    def get_id
        id = ''
        puts 'Please enter your message ID:'
        id = @id_test.shift
        puts "> #{id}"
        @messages.retrieve_message(id.to_i)
    end
end
