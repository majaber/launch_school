# Build a mortgage calculator.
# Need: the loan amount, APR, and loan duration
#
# Must calculate: monthly int rate, loan duration in months, monthly payment
#
# m = p * (j/ (1 - (1 + j)**(-n)))
#
# m = monthly payment
# p = loan amount
# j = monthly int rate
# n = loan duration (months)
require 'yaml'
MESSAGES = YAML.load_file('loan_messages.yml')
require 'pry'

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

prompt(MESSAGES['welcome'])

loop do
  prompt("----------")

loan_amount = ''
annual_rate = ''
duration = ''

  loop do
    prompt("What is the loan amount?")
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt(MESSAGES["invalid"])
    end
  end

  loop do
    prompt(MESSAGES['apr'])
    annual_rate = gets.chomp
    if valid_number?(annual_rate)
      break
    else
      prompt(MESSAGES["invalid"])
    end
  end

  loop do
    prompt(MESSAGES['duration'])
    duration = gets.chomp
    if valid_number?(duration)
      break
    else
      prompt(MESSAGES["invalid"])
    end
  end

  monthly_int = (annual_rate.to_f / 100) / 12

  payment = loan_amount.to_f * (monthly_int/ (1 - ( 1 + monthly_int)**(-duration.to_i)))
  payment = payment.round(2)
  prompt("Your monthly payment will be $#{payment} per month!")

  prompt(MESSAGES['repeat'])
  repeat = gets.chomp.downcase
  break if repeat != 'y'
end

prompt(MESSAGES["goodbye"])
