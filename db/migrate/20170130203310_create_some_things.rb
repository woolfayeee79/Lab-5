class CreateSomeThings < ActiveRecord::Migration[5.0]
  def change
    create_table :some_things do |t|
      t.string :val

      t.timestamps
    end
  end
end
