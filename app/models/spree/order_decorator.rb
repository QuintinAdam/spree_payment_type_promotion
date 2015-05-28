Spree::Order.class_eval do
  state_machine do
   before_transition from: :payment, do: :process_payment_promotions
  end

  def process_payment_promotions
    Spree::PromotionHandler::Cart.new(self).activate
    self.update!
    persist_totals
  end

end
