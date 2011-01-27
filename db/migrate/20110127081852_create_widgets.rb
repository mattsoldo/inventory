class CreateWidgets < ActiveRecord::Migration
  def self.up
    create_table :widgets do |t|
      t.references :product
      t.boolean :discrete
      t.integer :lft
      t.integer :rgt
      t.integer :parent_id
      t.decimal :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :widgets
  end
end
