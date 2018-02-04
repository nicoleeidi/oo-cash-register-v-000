class CashRegister
  attr_accessor :total, :discount

  def initialize(discount= nil)
    @total= 0
    @items= []
    @discount= discount
  end
  def add_item(title,item,price)
    @total += price
  end
  def items
    @@items
  end
  def apply_discount
  end
  def void_last_transaction
  end
end
