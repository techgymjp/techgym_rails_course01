class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :title
      t.string :name
      t.string :email
      t.text :remark
      t.integer :status

      t.timestamps
    end
  end
end
