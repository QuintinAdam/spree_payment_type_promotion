class CreateSpreePaymentMethodsPromotionRules < ActiveRecord::Migration
  def change
    create_table :spree_payment_methods_promotion_rules, id: false, force: true do |t|
      t.references :payment_method
      t.references :promotion_rule
    end
    add_index :spree_payment_methods_promotion_rules, [:payment_method_id], name: 'index_payment_methods_promotion_rules_on_payment_method_id'
    add_index :spree_payment_methods_promotion_rules, [:promotion_rule_id], name: 'index_payment_methods_promotion_rules_on_promotion_rule_id'
  end
end
