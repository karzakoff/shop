class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items, force: true do |t|
      t.references :products
      t.belongs_to :cart

      t.timestamps
    end
  end
end
