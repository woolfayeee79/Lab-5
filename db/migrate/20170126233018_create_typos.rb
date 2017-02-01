class CreateTypos < ActiveRecord::Migration[5.0]
  def change
    create_table :typos do |t|
      t.string :name
      t.string :stuff

      t.timestamps
    end
  end
end
