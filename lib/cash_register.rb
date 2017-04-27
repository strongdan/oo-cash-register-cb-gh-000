
class CashRegister

  def initialize(discount={})
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount, :last_trans_amount, :items

  def add_item(title, price, quantity=nil)
    previous = @total
    @items << title
    if quantity != nil
      @total += price * quantity
    else
      @total += price
    end
  end

  def apply_discount
    total = add_item
    total = total - (discount * total)
  end

end
