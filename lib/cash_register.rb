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
  @discount = discount/100.to_f
  @total= @total - (@total - @discount)
  @total
  "After the discount, the total comes to #{@total.to_i}."
  else
    "There is no discount to apply"
  end
end























