class CreateWants < ActiveRecord::Migration[6.0]
  def change
    create_table :wants do |t|
      t.string :name, null: false
      t.string :title, null: false
      t.timestamps
    end
  end
end
