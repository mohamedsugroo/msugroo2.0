class AddServiceNameToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :service_name, :string
  end
end
