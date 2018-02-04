class CashRegister
  attr_accessor :total, :discount, :lasttransaction, :price

  def initialize(discount= nil)
    @total= 0
    @items= []
    @lasttransaction= @items[-1]
    @discount= discount
  end
  def add_item(item,price,quantity= 1)
    i=0
    until i==quantity
    @items << item
    @price= price
    i+=1
    end
    @total += price*quantity

  end
  def items
    @items
  end
  def apply_discount
    if @discount= nil
      return "There is no discount to apply."
    else
      total= @total.to_i - discount
      return "After the discount, the total comes to $#{total}."
    end
        # if discount is given as a number, not percentage
  end
  def void_last_transaction
    @total - @lasttransaction.price
  end
end
