module Spree
  class Promotion
    module Rules
      class PaymentType < Spree::PromotionRule
        has_and_belongs_to_many :payment_methods, class_name: '::Spree::PaymentMethod', join_table: 'spree_payment_methods_promotion_rules', foreign_key: 'promotion_rule_id'

        def applicable?(promotable)
          promotable.is_a?(Spree::Order)
        end

        def eligible?(order, options = {})
          order.payments.any? do |order_payment|
            unless ['failed', 'void', 'completed'].include?(order_payment.state)
              promotion.promotion_rules.where(type: "Spree::Promotion::Rules::PaymentType").first.payment_methods.any?{|pay_type| order_payment.payment_method == pay_type }
            end
          end
        end

        def actionable?(line_item)
          true
        end
      end
    end
  end
end
