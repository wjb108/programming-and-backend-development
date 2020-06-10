=begin
inputs:
input_1 = loan amount
input_2 = APR in decimal
input_3 = loan duration in years or months?

things need to calculate:
calculation_1 = monthly interest rate # in decimal
# i may need to transform the APR to the month interest rate by divding by 12
calculation_2 = loan duration in months
# i may need to divide years by 12 to get months unit
calculation_3 = monthly payment as per the formula
# m = p * (j / (1 - (1 + j)**(-n)))
    m = monthly payment # calculation_3
    p = loan amount # input_1
    j = monthly interest rate # calculation_1
    n = loan duration in months # calculation_2
# game plan
# collect inputs
i need user input for three inputs and save the responses as unique variables:
# input_1
puts "What is the loan amount?"
loan_amount = gets.chomp.to_f #store input as variable
# input_2
puts "What is the APR in decimal?"
apr_decimal = gets.chomp.to_f #store input as variable
# input_3
puts "What is the loan duration in years?"
loan_duration_years = gets.chomp.to_f #store input as variable

# calculations
# calculation_1
apr_monthly_decimal = apr_decimal / 12
# calculation_2
loan_duration_months = loan_duration_years / 12
# calculation_3
monthly_payment =
loan_amount * (apr_monthly_decimal /
(1 - (1 + apr_monthly_decimal)**(-loan_duration_months)))
p monthly_payment

#notes
it make make most sense to us floating numbers since there will be division
going on
no methods or blocks contemplated, taking inputs saving them as variables,
creating new variables through division and the calculating the result based
on those
saved values.

i need to put in a validation for the input so
will need to incorporate this after i have it working with ideal inputs

=end
loan_amount = nil
apr_decimal = nil
loan_duration_years = nil

def invalid_input?(num)
  num.to_i <= 0 || num.include?("abcdefghijklmnopqrstuvwxyz") || num.include?("$") || num.include?("%") || num.empty?
end

puts ">> Welcome to our mortgage calculator!"
loop do
  loop do
    puts ">> What is the loan amount?"
    loan_amount = gets.chomp

    if invalid_input?(loan_amount) == true
      puts ">> You have entered an invalid input! Try again"
    else
      break
    end
  end

  loop do
    puts ">> What is the loan's APR in decimal? For 5% enter 5!"
    apr_decimal = gets.chomp

    if invalid_input?(apr_decimal) == true
      puts ">> You have entered an invalid input! Try again"
    else
      break
    end
  end

  loop do
    puts ">> What is the loan duration in years? i.e. For 19.5 years, enter 19.5!"
    loan_duration_years = gets.chomp

    if invalid_input?(loan_duration_years) == true
      puts ">> You have entered an invalid input! Try again"
    else
      break
    end
  end

  # calculations
  apr_monthly_decimal = apr_decimal.to_f / 100 / 12
  loan_duration_months = loan_duration_years.to_f * 12
  monthly_payment = loan_amount.to_i * (apr_monthly_decimal / (1 - (1 + apr_monthly_decimal)**(-loan_duration_months)))

  p ">> The monthly mortgage payment is: #{format('%02.2f', monthly_payment)}"
  p ">> Would you like to run another calculation? Enter Yes or No"
  answer_again = gets.chomp
  break unless answer_again.downcase.start_with?("y")
end

p ">> Thanks for using our calculator and hope it was helpful."
p ">> Hope you have a nice day!"
