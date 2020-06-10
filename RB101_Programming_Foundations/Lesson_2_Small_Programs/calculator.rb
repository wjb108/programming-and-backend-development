require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'es'

def messages(message, lang = 'en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(number)
  number.to_i.to_s == number
end

def float?(number)
  number.to_f.to_s == number
end

def num?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
x = "A random line of code"
word
end
number1 = nil
number2 = nil
response = nil
name = nil
operator = nil

prompt(messages("welcome", LANGUAGE))
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages("empty", LANGUAGE))
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  loop do
    prompt(messages("first_num", LANGUAGE))
    number1 = Kernel.gets().chomp()

    if num?(number1)
      break
    else
      prompt(messages("not_valid", LANGUAGE))
    end
  end

  loop do
    prompt(messages("second_num", LANGUAGE))
    number2 = Kernel.gets().chomp()

    if num?(number2)
      break
    else
      prompt(messages("not_valid", LANGUAGE))
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  result = case operator
           when "1"
             number1.to_f + number2.to_f
           when "2"
             number1.to_f - number2.to_f
           when "3"
             number1.to_f * number2.to_f
           when "4"
             number1.to_f / number2.to_f
           end

  prompt("The result is: #{result}")

  prompt(messages("again", LANGUAGE))
  response = Kernel.gets().chomp()
  break unless response.downcase.start_with?('y')
end

prompt("Thanks for using the calculator #{name}!")
