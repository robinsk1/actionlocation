class CreateLocationTranslations < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      dir.up do
        Location.create_translation_table!({
          :name => :string,
          :description => :text, 
          :strap => :string
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Location.drop_translation_table! :migrate_data => true
      end
    end
  end
end
