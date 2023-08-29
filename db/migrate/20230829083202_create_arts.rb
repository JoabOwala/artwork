class CreateArts < ActiveRecord::Migration[7.0]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :image
      t.string :artist
      t.string :year
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
