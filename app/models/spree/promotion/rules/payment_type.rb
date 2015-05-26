module Spree
  class Promotion
    module Rules
      class PaymentType < Spree::PromotionRule
        has_and_belongs_to_many :payment_methods, class_name: '::Spree::Payment', join_table: 'spree_payment_promotion_rules', foreign_key: 'promotion_rule_id'
        def applicable?(promotable)
          promotable.is_a?(Spree::Order)
          raise 'the roof'
        end

        def eligible?(order, options = {})
          raise 'the roof'

        end

        def actionable?(line_item)
          raise 'the roof'
        end
      end
    end
  end
end
