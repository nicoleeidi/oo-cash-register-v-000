class CashRegister
  attr_accessor :total, :discount

  def initialize(discount= nil)
    @total= 0
    @items= []
    @discount= discount
  end
  def add_item(item,price,quantity= 1)
    i=0
    until i=quantity
    @items << item
    i+=1
    end
    @total += price*quantity
  end
  def items
    @items
  end
  def apply_discount
  end
  def void_last_transaction
  end
end
