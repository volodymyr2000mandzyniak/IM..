class CreateNews < ActiveRecord::Migration[6.1]
  def change
    create_table :news do |t|
      t.string :name
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end
