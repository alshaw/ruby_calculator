#make sure all your requires are at the top
require 'pry'
require 'colorize'

@operators = ['+', '-', '*', '/']


def start
  puts 'Welcome to the ruby calculator!'.colorize(:green)
  puts 'What is the first number?'
    number_1 = gets.to_i
  puts 'What is the operator?'
    operator = gets.strip
  puts "What is the second number?"
    number_2 = gets.to_i
  calculator(number_1, number_2, operator)

#   puts "#{number_1} #{@operators[num]} #{number_2}"
#   puts "#{number_1 @operators[num] number_2}"
end 

def calculator(left, right, operator)
case operator
  when '+'
    print "#{left} + #{right} = "
    answer = left + right
    puts left + right
  when '-'
    print "#{left} - #{right} = "
    answer = left - right
    puts left - right
  when '*'
    print "#{left} * #{right} = "
    answer = left * right
    puts left * right
  when '/'
    print "#{left} / #{right} = "
    if right == 0 
      puts "0"
      answer = 0
    else 
        answer = left / right
        puts left / right
    end
else
  puts 'Operator % is not supported. I only support + - * / operators.'
    end
second_pass(answer)
end

def second_pass(answer)
    puts 'What is the operator?'
    operator = gets.strip
    puts "What is the second number?"
    number_2 = gets.to_i
    calculator(answer, number_2, operator)




end

start