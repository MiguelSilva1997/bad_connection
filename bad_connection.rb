puts "HELLO, HOW CAN I HELP YOU!"

def customer_service(message)
  count = 0
  ready_to_quit = false

  until ready_to_quit
    if message.empty?
      puts "HELLO?!"
    elsif message == "GOODBYE!" && count == 1
      puts "THANK YOU FOR CALLING!"
      break
    elsif message == "GOODBYE!"
      puts "ANYTHING ELSE I CAN HELP WITH?"
      count += 1
    elsif message.downcase == 'true'
      break
    elsif message == message.downcase || message == message.capitalize
      puts "I AM HAVING A HARD TIME HEARING YOU."
    elsif message == message.upcase
      puts "NO, THIS IS NOT A PET STORE"
    end
    message = gets.chomp
  end
end

customer_service(gets.chomp)
