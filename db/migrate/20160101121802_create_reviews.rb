class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :stars
      t.string :comment
      t.string :text
      t.references :movie, index: true

      t.timestamps
    end
  end
end
