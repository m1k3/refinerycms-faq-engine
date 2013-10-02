class AddFaqsTranslations < ActiveRecord::Migration

  def up
    Refinery::Faqs::Faq.create_translation_table! question: :string, answer: :text
    remove_columns :refinery_faqs, :question, :answer
  end

  def down
    Refinery::Abouts::Bio.drop_translation_table!
    add_column :refinery_faqs, :question, :string
    add_column :refinery_faqs, :answer, :text
  end

end

