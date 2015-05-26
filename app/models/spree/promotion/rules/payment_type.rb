module Spree
  class Promotion
    module Rules
      class PaymentType < Spree::PromotionRule
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
