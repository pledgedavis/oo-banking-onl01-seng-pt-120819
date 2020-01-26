class Transfer
  # # your code here
  attr_accessor :sender, :receiver, :status, :amount
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
    end


def valid?
# binding.pry
 self.receiver.valid? && self.sender.valid?
end

def execute_transaction
  
  if valid? && self.sender.balance > amount && self.status == "pending"
        self.receiver.balance += amount
        self.status = "complete"
        self.sender.balance -= amount
  else 
      self.status = "rejected"
       "Transaction rejected. Please check your account balance."
end
end

 def reverse_transfer
  # binding.pry
#   self.receiver.balance -= amount
# self.sender.balance = receiver.balance
 if valid? && self.sender.balance < amount && self.status -= "pending"
        # self.receiver.balance > amount
        # self.status = "complete"
        # self.sender.balance += amount
 end
 end






end
