
class CashRegister

  def initialize(discount={})
    @total = 0
    @discount = discount
  end

  attr_accessor :total, :discount, :last_trans_amount

  def add_item(title, price, quantity=nil)
    previous = @total
    if quantity != nil
      @total += price * quantity
    else
      @total += price
    end
  end


end
