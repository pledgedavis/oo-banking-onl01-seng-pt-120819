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












end
