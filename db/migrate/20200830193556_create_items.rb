class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :private, null: false, default: true
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
