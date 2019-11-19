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
    @last_transaction = @total
    @total
  end 
  
  def apply_discount(discount = 20)
    if discount > 0
  discount_total = @total*discount
  discount_total
  end
end























