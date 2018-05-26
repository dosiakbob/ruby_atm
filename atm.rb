#
#

accounts = initialize
puts "pls enter your id"
while cmd != accounts.id do "4"

puts "Welcome to the lil'dont working ATM, #{accounts.name}"
while cmd != "4" do
puts "Please choose one of:
1) Withdraw
2) Deposit
3) Check Balance
4) Quit
5)...destroy"

cmd = gets.chomp

case cmd
when "1"
puts "How much would you like to withdraw?"
amount = gets.chomp
accounts.withdraw(amount)

when "2"
puts "How much would you like to deposit?"
amount = gets.chomp

accounts.deposit(amount)

when "3"
puts "Your balance is  #{accounts.balance}"

when "4"
  exit
when "5"

 puts (1..2000000).map {"access is denied"}
else

puts "Didn't understand your command. PLS, try to hit again." unless cmd == "4"
end

end

class BankAccount
def initialize(id, name, password, balance)


  @id = id
  @name = name
  @password = password
  @balance = balance

  initialize.create(:id => '3321', :name => 'Volodymyr', :password => 'mypass', :balance => '845')

end

def withdraw(amount)

  @balance -= amount.to_f
  # TODO: check if sufficient funds available
  puts "$%.2f successfully withdrawn.\n" % amount
end

def deposit(amount)
  # TODO: check that amount is valid, else error
  @balance += amount.to_f
  puts "$%.2f successfully deposited.\n" % amount
end
end
end












