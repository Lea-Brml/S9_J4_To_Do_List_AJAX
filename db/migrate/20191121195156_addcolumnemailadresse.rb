class Addcolumnemailadresse < ActiveRecord::Migration[5.2]
  def change
    add_column :emails, :mail_adress, :string
  end
end
