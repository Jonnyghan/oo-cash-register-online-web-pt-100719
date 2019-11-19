require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 

  def add_item(name, price,quantity=1)
    @items << name
    @total += price * quantity
    #binding.pry
  end 
  
  def apply_discount(discount = .8)
  discount_total = @total*discount
  discount_total
  end
end























