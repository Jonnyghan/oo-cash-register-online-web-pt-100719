require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    
  end 

end























