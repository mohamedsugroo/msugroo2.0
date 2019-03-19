class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :company_name
      t.string :industry
      t.text :comment

      t.timestamps
    end
  end
end
