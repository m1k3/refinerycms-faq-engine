module Refinery
  module Faqs
    module Admin
      class FaqsController < ::Refinery::AdminController

        crudify :'refinery/faqs/faq',
                title_attribute: 'question',
                xhr_paging: true

        def sort_index
          @sort_index = true
          find_all_faqs
          render_partial_response?
        end
      end
    end
  end
end
