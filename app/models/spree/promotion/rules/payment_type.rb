module Spree
  class Promotion
    module Rules
      class PaymentType < Spree::PromotionRule
        def applicable?(promotable)
          promotable.is_a?(Spree::Order)
        end

        def eligible?(order, options = {})

        end

        def actionable?(line_item)

        end
      end
    end
  end
end
