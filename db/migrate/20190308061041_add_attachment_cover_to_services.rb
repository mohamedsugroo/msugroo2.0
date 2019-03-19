class AddAttachmentCoverToServices < ActiveRecord::Migration[5.2]
  def self.up
    change_table :services do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :services, :cover
  end
end
