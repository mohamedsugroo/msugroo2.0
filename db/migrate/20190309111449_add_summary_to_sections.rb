class AddSummaryToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :summary, :text
  end
end
