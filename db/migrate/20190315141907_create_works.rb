class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :company_name
      t.string :industry
      t.string :url
      t.string :website

      t.timestamps
    end
  end
end
