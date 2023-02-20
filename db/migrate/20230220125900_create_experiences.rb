class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :duration
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
