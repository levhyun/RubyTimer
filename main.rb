require_relative 'RubyTimeModule'

def main
    time = RubyTimeModule::Clock.new
    until false do
        time.header
        time.nav
        print "Enter a command\n> "
        command = gets.chomp
        puts time.command(command)
        time.last
    end
end
main()