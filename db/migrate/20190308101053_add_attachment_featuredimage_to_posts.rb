class AddAttachmentFeaturedimageToPosts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :posts do |t|
      t.attachment :featuredimage
    end
  end

  def self.down
    remove_attachment :posts, :featuredimage
  end
end
