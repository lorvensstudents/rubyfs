class CreateClassments < ActiveRecord::Migration[5.1]
  def change
    create_table :classments do |t|
      t.string :name
      t.string :mobileno
      t.string :born

      t.timestamps
    end
  end
end
