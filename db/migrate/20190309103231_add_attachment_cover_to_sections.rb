class AddAttachmentCoverToSections < ActiveRecord::Migration[5.2]
  def self.up
    change_table :sections do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :sections, :cover
  end
end
