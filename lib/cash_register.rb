
class CashRegister

  def initialize(discount={})
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount, :last_trans_amount, :items

  def add_item(title, price, quantity=nil)
    previous = @total
    if quantity != nil
      @total += price * quantity
    else
      @total += price
    end
  end

  def apply_discount
    self.total = self.total - (self.total * @discount)
  end

end
