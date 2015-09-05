class CreateUsesrs < ActiveRecord::Migration
  def change
    create_table :usesrs do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
