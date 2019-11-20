class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.string :fisrtname
      t.string :lastname
      t.integer :age

      t.timestamps
    end
  end
end
