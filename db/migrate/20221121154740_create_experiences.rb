class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :description
      t.string :city
      t.integer :price
      t.string :duration
      t.string :category

      t.timestamps
    end
  end
end
