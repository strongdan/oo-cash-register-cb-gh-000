
class CashRegister

  def initialize(discount={})
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount, :last_trans_amount, :items

  def items
    self.items
  end

  def add_item(title, price, quantity=nil)
    self.items << title
    previous = @total
    if quantity != nil
      @total += price * quantity
    else
      @total += price
    end
  end


end
