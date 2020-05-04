class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.date :date
      t.references :creator, references: :users, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
