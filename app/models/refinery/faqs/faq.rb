module Refinery
  module Faqs
    class Faq < Refinery::Core::BaseModel
      self.table_name = 'refinery_faqs'

      attr_accessible :question, :answer, :position

      acts_as_indexed :fields => [:question, :answer]

      validates :question, :presence => true, :uniqueness => true

      translates :question, :answer if respond_to?(:translates)
      self.translation_class.send :attr_accessible, :locale if self.respond_to?(:translation_class)
    end
  end
end
