def calculator
  puts "Welcome to Command-Line Calculator! 🚀"
  puts "Choose an operation: +, -, *, /, or type 'exit' to quit."

  loop do
    print "Enter operation: "
    operation = gets.chomp

    break if operation.downcase == 'exit'

    unless ['+', '-', '*', '/'].include?(operation)
      puts "Invalid operation! Please enter +, -, *, / or 'exit'."
      next
    end

    print "Enter the first number: "
    num1 = gets.chomp.to_f

    print "Enter the second number: "
    num2 = gets.chomp.to_f

    result = case operation
             when '+' then num1 + num2
             when '-' then num1 - num2
             when '*' then num1 * num2
             when '/' 
               if num2.zero?
                 "Error: Division by zero!"
               else
                 num1 / num2
               end
             end

    puts "Result: #{result}"
  end

  puts "Thank you for using the calculator! Goodbye! 👋"
end

calculator
