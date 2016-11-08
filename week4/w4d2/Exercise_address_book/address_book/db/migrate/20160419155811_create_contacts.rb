class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :e_mail

      t.timestamps null: false
    end
  end
end
