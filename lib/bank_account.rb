require 'pry'
class BankAccount
  attr_reader :name
  attr_accessor :balance, :status 
   @@account = []
def initialize(name)
@name = name 
@balance = 1000
@status = "open"
@@account = []
end

def deposit(money)
# binding.pry 
# @@account << @balance
# @@account << @balance*2
# [2000].join("")
@balance = @balance + money
end
 
 def display_balance
   @balance
 end









end






















