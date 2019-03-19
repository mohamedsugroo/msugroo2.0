class AddAttachmentCoverToWorks < ActiveRecord::Migration[5.2]
  def self.up
    change_table :works do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :works, :cover
  end
end
