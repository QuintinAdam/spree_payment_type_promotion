class CreateSpreePaymentMethodsPromotionRules < ActiveRecord::Migration
  def change
    create_table :spree_payment_promotion_rules do |t|
      t.references :payment_methods, index: true
      t.references :promotion_rule, index: true
    end
  end
end
