require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end 

  def add_item(name, price,quantity=1)
    if quantity > 1 
    i = 0
    while i<quantity
    @items << name 
    i += 1 
    end
    else
    @items << name
    @total += price * quantity
    #binding.pry
    @last_transaction = @total
    @total
  end
  end 
  
  def apply_discount()
    if discount > 0
  @discount = discount/100.to_f
  @total= @total - (@total * @discount)
  @total
  "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
    end 
  end
end























