class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    price = price * quantity
    @total += price
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    real_discount = @discount.to_f / 100
    price_after_discount = @total -= (@total * real_discount)
    if @discount != 0
      return "After the discount, the total comes to $#{price_after_discount.to_i}."
    elsif @discount = 0
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
  end

end
