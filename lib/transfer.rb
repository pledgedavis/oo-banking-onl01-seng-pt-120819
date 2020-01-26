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
 self.receiver.valid?
 self.sender.valid?
end

def execute_transaction
  # binding.pry 
  # self.sender.balance -= @amount
  # self.receiver.balance += @amount
  # @status = "complete"
  # self.sender.balance -=
  
  if self.sender.balance > @amount && self.status == "pending"
    self.receiver.balance += @amount
  self.status = "complete"
  self.sender.balance -= @amount
end
end







end
