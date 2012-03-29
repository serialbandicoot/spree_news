class CreateTicks < ActiveRecord::Migration
  def change
    create_table :spree_ticks do |t|
      t.string :title
      t.string :description
      t.boolean :published

      t.timestamps
    end
  end
end
