class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :title
      t.string :subheading
      t.text :content
      t.integer :service_id
      t.integer :user_id

      t.timestamps
    end
  end
end
