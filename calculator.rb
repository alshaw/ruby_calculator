#make sure all your requires are at the top
require 'pry'
require 'colorize'

@operators = ['+', '-', '*', '/']


def start
  puts 'Welcome to the ruby calculator!'.colorize(:green)
  puts "Type quit to exit at any time.".colorize(:red)
  puts 'What is the first number?'
    number_1 = gets.strip
    if /(\d)|(\d+).(\d+)/.match(number_1)
       num1f = number_1.to_f
    elsif /quit/.match(number_1)
        exit
    else
       puts "Invalid Input. Please enter a number."
    end
  puts 'What is the operator?'
    operator = gets.strip
    if /quit/.match(number_1)
        exit
    end
  puts "What is the second number?"
    number_2 = gets.strip
    if  /(\d)|(\d+).(\d+)/.match(number_2)
        num2f = number_2.to_f
    elsif /quit/.match(number_1)
        exit
    else
        puts "Invalid Input. Please enter a number."
        start
    end

  calculator(num1f, num2f, operator)
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
    if /quit/.match(operator)
        exit
    elsif /clear/.match(operator)
        start
    end
    puts "What is the second number?"
    number_2 = gets.to_f
    if /quit/.match(number_2)
        exit
    end
    calculator(answer, number_2, operator)
end

start