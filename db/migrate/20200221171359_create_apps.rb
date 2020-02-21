class CreateApps < ActiveRecord::Migration[5.2]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :version
      t.integer :category_id
      t.float :price
      t.integer :age_limit

    end
  end
end
