require 'pry'

class CashRegister
 
   attr_accessor :total, :discount, :items, :last_transaction, :price, quantity 
  
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
    @last_transaction=last_transaction
  end 

  def add_item(name, price,quantity=1)
    @price = price
    @quantity = quantity
    @total += price * quantity
    if quantity > 1 
      i = 0
    while i<quantity
      @items << name 
      i += 1 
    end
    else
     @items << name
    end
    @last_transaction = @price
    @total
    #binding.pry
  end 
  
  def apply_discount()
    if discount > 0
  @discount = discount/100.to_f
  @total = @total - (@total * @discount)
  @total
  "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
    end 
  end
  
  
  def void_last_transaction()
   total = @total -= (@last_transaction * @quantity)
   #binding.pry
   if total = 0.0 
     return total
   end
  end
  
  
end























