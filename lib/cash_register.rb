require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)#optionally takes an employee discount on initialization
        @total = 0 #sets an instance variable @total on initialization to zero
        @discount = discount
        @items = []
    end

    def add_item(title, amount, quantity = 0)
        self.total += amount * quantity
        quantity.times do 
            items << title
        end
        self.transaction = amount * quantity
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total = (total * ((100.0 - discount.to_f)/100)).to_i
            "After the discount, the total come to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
end