# you need the following:
# loan amount
# APR
# loan duration
def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt("Welcome to Loan Calculator!")
  prompt("---------------------------")

  prompt("Would you please provide the loan amount?")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty?() || loan_amount.to_f() < 0
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("Please enter the Annual Percentage Rate (APR):")
  apr = ''
  loop do
    apr = gets.chomp
    if apr.empty? || apr.to_f < 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  apr = apr.to_i * 0.01
  int_rate = apr / 12

  prompt("How long is the duration of your loan? (months)")
  loan_duration = ''

  loop do
    loan_duration = gets.chomp
    if loan_duration.empty? || loan_duration.to_i < 0
      prompt("Enter a valid number.")
    else
      break
    end
  end
  loan_duration = loan_duration.to_i

  # calculate the following:
  # monthly interest rate
  # loan duartion
  # monthly payment

  # m = p * (j / (1 - (1 + j)**(-n)))
  # m = monthly payment
  # p = loan amount
  # j = monthly interest rate
  # n = loan duration (months)

  m_payment = loan_amount.to_i *
              (int_rate / (1 - (1 + int_rate)**(- loan_duration)))
  prompt("Your monthly loan payment will be: #{format('%.2f', m_payment)}")

  prompt("Would you like another calculation? (Y/N)")

  another_calculation = gets.chomp.downcase
  unless another_calculation == "y"
    break
  end
end

prompt("Thank you for using the Loan Calculator!")
prompt("Good bye!")
