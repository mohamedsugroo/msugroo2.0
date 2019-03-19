class AddAttachmentAvatarToReviews < ActiveRecord::Migration[5.2]
  def self.up
    change_table :reviews do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :reviews, :avatar
  end
end
