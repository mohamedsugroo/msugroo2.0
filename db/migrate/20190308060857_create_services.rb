class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :title
      t.string :sub_header
      t.text :summary
      t.string :service_name

      t.timestamps
    end
  end
end
