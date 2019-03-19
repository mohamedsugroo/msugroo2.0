class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.string :reason
      t.text :comment
      t.string :location
      t.string :phone
      t.string :skype_user

      t.timestamps
    end
  end
end
