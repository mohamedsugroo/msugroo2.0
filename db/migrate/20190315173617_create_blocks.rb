class CreateBlocks < ActiveRecord::Migration[5.2]
  def change
    create_table :blocks do |t|
      t.integer :work_id
      t.string :title
      t.string :block_style
      t.text :content
      t.string :block_type
      t.string :block_width
      t.string :block_content_wrapper

      t.timestamps
    end
  end
end
