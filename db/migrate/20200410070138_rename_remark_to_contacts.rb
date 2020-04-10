class RenameRemarkToContacts < ActiveRecord::Migration[5.2]
  def change
    rename_column :contacts, :remark, :content
  end
end
